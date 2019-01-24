module vips.image;

import vips.option;
import vips.bindings;

import gobject.Value;
import gobject.ObjectG;
import gobject.c.types : GObject;

class VImage : ObjectG{
public:
    this(VipsImage* source, bool isOwned = false)
    {
        super(cast(GObject*)source, isOwned);
    }

    ~this()
    {
        import std.stdio:writeln;
        writeln("Destructing image");
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

    auto op = new ObjectG(
        cast(GObject*)vips_operation_new(name.toStringz),
        true
    );
    options.setInputs(op);
    auto op2 = ObjectG.getDObject!ObjectG(
        cast(GObject*)vips_cache_operation_build(
            cast(VipsOperation*)op.getObjectGStruct),
        true
    );
    if(op2 is op){
        op.unref();
    }
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
    scope(exit) vips_shutdown();
    // vips_leak_set(true);
    VImage image = VImage.fromFile("t.jpg");
    // StopWatch sw = StopWatch(AutoStart.yes);
    // writefln("image refCount: %d", getRC(image));
    foreach(i; 200 .. 10_000)
    {
        // auto image = VImage.fromFile("t.jpg");
        // writefln("image refCount: %d", getRC(image));
        // writeln("Iteration ", i);
        image = image.invert(null).rotate(i % 4 * 90, null);
        auto thumb = image.thumbnail_image(i % 10 * 20 + 200, null);
        // writefln("Generated thunbnail. Took %d ms", sw.peek.total!"msecs");
        // sw.reset();
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

