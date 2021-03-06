module vips.image;

import vips.option;
import vips.bindings;

import gobject.Value;
import gobject.ObjectG;
import gobject.c.types : GObject;

struct VImage{
package:
    VipsImage* img;
public:
    this(VipsImage* source, bool isOwned = false)
    {
        img = source;
        if(!isOwned){
            g_object_ref(img);
        }
    }

    ~this()
    {
        if(img !is null){
            g_object_unref(img);
        }
    }

    this(this)
    {
        g_object_ref(img);
    }

    void saveToFile(string file)
    {
        import std.exception : enforce;
        import std.string : fromStringz, toStringz;

        auto opName = vips_foreign_find_save(file.toStringz).fromStringz;
        enforce(opName !is null, "Could not find appropriate VIPS operation to save with for for target file name: " ~ file);
        auto options = VOption();
        options
            .set("in", this)
            .set("filename", file);
        baseOp(opName, options);
    }

    static VImage fromFile(string file)
    {
        import std.exception : enforce;
        import std.string : fromStringz, toStringz;
        import std.typecons : scoped;
        VImage image;
        auto opName = vips_foreign_find_load(file.toStringz).fromStringz;
        enforce(opName !is null, "Could not find appropriate VIPS operation to load image with for file: " ~ file);
        auto options = VOption();
        options
            .set("filename", file)
            .set("out", &image);
        baseOp(opName, options);
        return image;
    }

    static GType getType()
    {
        return vips_image_get_type();
    }
}

package void baseOp(const(char)[] name, ref VOption options)
{
    import std.string : fromStringz, toStringz;
    import std.typecons : Unique;
    import vips.operation : VOperation;

    auto op = VOperation(name);
    op.build(options);
}

unittest
{
    import std.string : fromStringz;
    import vips.operations : invert, thumbnail, thumbnail_image, rotate;

    vips_init("test");
    scope(exit) vips_shutdown();
    vips_cache_set_max(0);
    vips_leak_set(true);
    VImage image = VImage.fromFile("t.png");
    foreach(i; 200 .. 300)
    {
        auto mid = image.invert().rotate(i % 4 * 90);
        auto thumb = mid.thumbnail_image(i % 10 * 20 + 200);
    }
}

