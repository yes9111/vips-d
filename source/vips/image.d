module vips.image;

import vips.option;
import vips.bindings;

import gobject.Value;
import gobject.ObjectG;

class VImage : ObjectG{
public:
    this()
    {
        super(null, false);
    }

    this(ObjectG source)
    {
        super(source.getObjectGStruct(), true);
    }

    void saveToFile(string file)
    {
        import std.string : fromStringz, toStringz;
        import std.typecons:scoped;
        auto opName = vips_foreign_find_save(file.toStringz).fromStringz;
        auto options = scoped!VOption();
        options.set("in", this).set("filename", file);
        baseOp(opName, options);
    }

    static VImage fromFile(string file)
    {
        import std.string : fromStringz, toStringz;
        import std.typecons : scoped;
        VImage image;
        auto opName = vips_foreign_find_load(file.toStringz).fromStringz;
        auto options = scoped!VOption();
        options.set("filename", file).set("out", &image);
        baseOp(opName, options);
        return image;
    }

    static GType getType()
    {
        return vips_image_get_type();
    }

    VipsImage* getImageStruct() const
    {
        return null;
    }
}

package void baseOp(const(char)[] name, VOption options)
{
    import std.exception : enforce;
    import std.string : fromStringz, toStringz;
    import std.typecons : Unique;

    auto op = vips_operation_new(name.toStringz);
    scope(exit) g_object_unref(op);

    Unique!ObjectG obj = ObjectG.getDObject!(ObjectG)(cast(GObject*)op);

    options.setInputs(op);
    immutable int result = vips_object_build(cast(VipsObject*)op);
    enforce(result == 0,
        "Could not run vips operation: " ~ vips_error_buffer().fromStringz);
    options.readOutputs(op);
}

unittest
{
    import std.string : fromStringz;
    import std.typecons : Unique, scoped;
    import vips.operations : invert;
    vips_init("test");
    vips_leak_set(true);
    auto image = VImage.fromFile("t.png");
    Unique!VImage inverted = image.invert(scoped!VOption());
    Unique!VImage hold = image;
}

