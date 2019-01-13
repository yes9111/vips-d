module vips.base;

package import vips.image;
package import vips.option;
package import vips.types;

class VipsException : Exception
{
public:
    this(string message,
        string file = __FILE__,
        size_t line = __LINE__,
        Throwable next = null)
    {
        import vips.bindings : vips_error_buffer, vips_error_clear;
        import std.string : fromStringz;
        super((message ~ ": Vips Error - " ~ vips_error_buffer.fromStringz).idup, 
            file, 
            line, 
            next);
        vips_error_clear();
    }
}

void initVips(string programName, bool leakChecking = false)
{
    import std.string : fromStringz, toStringz;
    import vips.bindings : vips_init, vips_leak_set;

    if(vips_init(programName.toStringz) == -1)
    {
        throw new VipsException("Unable to initialize Vips");
    }
    vips_leak_set(leakChecking);
}

void shutdownVips()
{
    import vips.bindings : vips_shutdown;
    vips_shutdown();
}

