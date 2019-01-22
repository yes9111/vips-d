module vips.image;

import vips.option;
import vips.bindings;

import gobject.Value;
import gobject.ObjectG;

class VImage : ObjectG{
public:
    this(ObjectG source, bool isOwned = false)
    {
        super(source.getObjectGStruct(), isOwned);
    }

    void saveToFile(string file)
    {
        import std.string : fromStringz, toStringz;
        import std.typecons:scoped;
        auto opName = vips_foreign_find_save(file.toStringz).fromStringz;
        auto options = scoped!VOption();
        // auto options = new VOption();
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
        // auto options = new VOption();
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
    immutable int result = vips_cache_operation_buildp(&op);
    enforce(result == 0,
        "Could not run vips operation: " ~ vips_error_buffer().fromStringz);
    options.readOutputs(op);
}

unittest
{
    import std.string : fromStringz;
    import std.conv : to;
    import std.typecons : Unique, scoped;
    import vips.operations : invert, thumbnail, thumbnail_image, rotate;
    import std.datetime.stopwatch : AutoStart, StopWatch;
    import std.stdio : writeln, writefln;

    int getRC(VImage image)
    {
        return image.getObjectGStruct().refCount;
    }

    vips_init("test");
    vips_leak_set(true);
    auto image = VImage.fromFile("t.jpg");
    StopWatch sw = StopWatch(AutoStart.yes);
    foreach(i; 200 .. 220)
    {
        auto img = image.rotate(i % 4 * 90, null);
        auto thumb = thumbnail_image(img, i, null);
        writefln("Generated thunbnail. Took %d ms", sw.peek.total!"msecs");
        thumb.saveToFile("thumbnails_" ~ i.to!string ~ ".png");
        writefln("Finished thumbnail %d. Took %d ms", i, sw.peek.total!"msecs");
        sw.reset();
    }
    /+
    writefln("Loaded img RC: %d", getRC(image));
    // scope(exit){
        // auto data = image.getObjectGStruct();
        // assert(ObjectG.getDObject!ObjectG(data) == image);
//
        // destroy(image);
    // }
    assert(ObjectG.getDObject!ObjectG(image.getObjectGStruct()) == image);
    auto inverted = image.invert(null);
    writefln("Inverted img RC: %d", getRC(inverted));
    writefln("Image RC after creating invertion: %d", getRC(image));
    writefln("Inverted RC after creating: %d", getRC(inverted));
    // scope(exit){
        // auto data = inverted.getObjectGStruct();
        // destroy(inverted);
        // writefln("Inverted RC after destruction: %d", data.refCount);
    // }

    auto rotated = inverted.rotate(90, null);
    writefln("Image RC after rotating invertion: %d", getRC(image));
    // scope(exit) destroy(rotated);
    rotated.saveToFile("rotated.png");
    /*
    Unique!VImage thumb = thumbnail("t.jpg", 200, scoped!VOption());
    thumb.saveToFile("thumb-test.png");
    inverted.saveToFile("inverted.png");
    */
    +/
}

