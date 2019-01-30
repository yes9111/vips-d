module vips.operation;

import vips.bindings;
import vips.option;
import vips.conv : toGObject;
import gobject.Value;
import std.string : toStringz;

/**
 * Wrapper around VipsOperation struct
 */
struct VOperation
{
private:
    VipsOperation* operation;
public:
    /**
     * Construct new VipsOperation
     * Given a name
     */
    this(const(char)[] opName)
    {
        operation = vips_operation_new(opName.toStringz);
    }

    /**
     * Construct a new VipsOperation
     * Given an existing pointer
     */
    this(VipsOperation* operation, bool ownedRef = false)
    {
        this.operation = operation;
        if(!ownedRef){
            g_object_ref(operation);
        }
    }

    ~this()
    {
        g_object_unref(operation);
    }

    /**
     * Run an operation with a specific set of options
     */
    void build(ref VOption options)
    {
        options.setInputs(this);
        auto op = VOperation(vips_cache_operation_build(operation), true);
        scope(exit) vips_object_unref_outputs(op.operation);
        options.readOutputs(op);
    }

    void setProperty(string key, Value value)
    {
        import vips.bindings : g_object_set_property;
        g_object_set_property(
            operation.toGObject,
            key.toStringz,
            value.getValueStruct(),
        );
    }

    void getProperty(string key, Value value)
    {
        import vips.bindings : g_object_get_property;
        g_object_get_property(
            operation.toGObject,
            key.toStringz,
            value.getValueStruct(),
        );
    }
}
