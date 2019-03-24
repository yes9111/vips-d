module vips.option;

import std.variant : Variant;

import vips.bindings;
import vips.image;
import vips.operation;
import vips.conv : toGObject;
import gobject.Value;
import gobject.ObjectG;

private struct ParamConfig
{
    string key;
    bool isOutput;
    Value value;
    Variant output;

    this(string key)
    {
        this.key = key;
    }
}

extern(C)
{
    bool g_type_is_a(GType src, GType target);
}

struct VOption
{
public:
     ~this()
    {
        foreach (config; options)
        {
            config.value.unset();
        }
    }

    ref VOption set(string key, VImage value)
    {
        auto config = ParamConfig(key);
        config.value = new Value().init(VImage.getType());
        g_value_set_object(config.value.getValueStruct, value.img.toGObject);
        options[key] = config;
        return this;
    }

    ref VOption set(string key, VImage* value)
    {
        import gobject.Type : Type;

        auto config = ParamConfig(key);
        config.value = new Value().init(VImage.getType());
        config.isOutput = true;
        config.output = value;
        options[key] = config;
        return this;
    }

    ref VOption set(string key, VImage[] value)
    {
        auto config = ParamConfig(key);
        config.value = new Value();
        config.value.init(vips_array_image_get_type());
        vips_value_set_array_image(config.value.getValueStruct(), cast(int)(value.length));
        auto array = vips_value_get_array_image(config.value.getValueStruct, null);
        foreach (i, image; value)
        {
            array[i] = image.img;
        }
        options[key] = config;
        return this;
    }

    ref VOption set(T)(string key, T value)
    {
        auto config = ParamConfig(key);
        config.value = new Value(value);
        options[key] = config;
        return this;
    }

    ref VOption set(string key, VipsBlob* blob)
    {
        auto config = ParamConfig(key);
        config.value = new Value(new ObjectG(cast(GObject*) blob));
        options[key] = config;
        return this;
    }

    ref VOption set(T : U*, U)(string key, T value)
    {
        import std.traits : isScalarType;

        auto config = ParamConfig(key);
        config.isOutput = true;
        static if (isScalarType!U)
        {
            config.value = new Value(U.init);
        }
        else static if (is(U == double[]))
        {
            config.value = new Value().init(vips_array_double_get_type());
            //TODO need to add corresponding reader method for this
        }
        else static if (is(U == VipsBlob*))
        {
            config.value = new Value().init(vips_blob_get_type());
            //TODO need to add corresponding reader handler for this
        }
        else
        {
            static assert(false, "Unknown output value: " ~ U.stringof);
        }
        config.output = value;
        options[key] = config;
        return this;
    }

    ref VOption set(string key, double[] vals)
    {
        auto config = ParamConfig(key);
        config.value = new Value();
        config.value.init(vips_array_double_get_type());
        vips_value_set_array_double(config.value.getValueStruct(), vals.ptr,
                cast(int) vals.length,);
        return this;
    }

    ref VOption set(string key, int[] vals)
    {
        auto config = ParamConfig(key);
        config.value = new Value().init(vips_array_int_get_type());
        vips_value_set_array_int(config.value.getValueStruct(), vals.ptr, cast(int) vals.length,);
        return this;
    }

    void setInputs(ref VOperation operation)
    {
        foreach (option; options)
        {
            if (!option.isOutput)
            {
                operation.setProperty(option.key, option.value);
            }
        }
    }

    void readOutputs(ref VOperation operation)
    {
        import gobject.Type : Type;
        import vips.bindings : g_value_get_object;
        foreach (option; options)
        {
            if (option.isOutput)
            {
                operation.getProperty(option.key, option.value);
                immutable type = option.value.getValueStruct().gType;
                if (type == vips_image_get_type())
                {
                    auto obj = cast(VipsImage*)
                        g_value_get_object(option.value.getValueStruct);
                    *(option.output.get!(VImage*)) = VImage(obj);
                }
                else if (type == GType.INT)
                {
                    *(option.output.get!(int*)) = option.value.getInt();
                }
                else if (type == GType.BOOLEAN)
                {
                    *(option.output.get!(bool*)) = option.value.getBoolean();
                }
                else if (type == GType.DOUBLE)
                {
                    *(option.output.get!(double*)) = option.value.getDouble();
                }
                else
                {
                    // still need to handle double arrays
                    // and blobs
                }
            }
        }
    }

private:
    ParamConfig[string] options;
}
