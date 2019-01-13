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

    static fromFile(string file)
    {
        import std.string : fromStringz, toStringz;
        import std.typecons : scoped;
        import std.stdio : writeln;
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

    auto op = vips_operation_new(name.toStringz);
    scope(exit) g_object_unref(op);

    options.setInputs(op);
    immutable int result = vips_cache_operation_buildp(&op);
    enforce(result == 0,
        "Could not run vips operation: " ~ vips_error_buffer().fromStringz);
    options.readOutputs(op);
}

unittest
{
    import std.stdio : writeln;
    import std.string : fromStringz;
    import vips.operations : resize;
    auto initVal = vips_init("test");
    writeln("Vips Version: ", vips_version_string().fromStringz);
    VImage image = VImage.fromFile("test.png");
    auto resized = resize(image, 0.5, null);
    resized.saveToFile("resized.jpg");
}

unittest
{
    import gobject.ObjectG;
    import std.stdio : writeln;
    auto op = vips_operation_new("thumbnail");
    auto obj = new ObjectG(cast(GObject*) op);
    writeln("Obj's underlying pointer: ", obj.getObjectGStruct());
    writeln("Obj's refcount: ", obj.getObjectGStruct().refCount);
    auto obj2 = new ObjectG(cast(GObject*) op);
    writeln("Obj's underlying pointer: ", obj.getObjectGStruct());
    writeln("Obj2's refcount: ", obj2.getObjectGStruct().refCount);
}

