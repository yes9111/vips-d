module vips.option;

import vips.bindings;
import vips.image;
import gobject.Value;
import gobject.ObjectG;

union ParamOutput
{
    int* vInt;
    double* vDouble;
    bool* vBool;
    VImage* vImage;
    double[]* vDoubleArray;
    VipsBlob** vBlob;
}

struct ParamConfig
{
    string key;
    bool isOutput;
    Value value;
    ParamOutput output;

    this(string key)
    {
        this.key = key;
    }
}

class VOption
{
public:
     ~this()
    {
        foreach (config; options)
        {
            config.value.unset();
        }
    }

    VOption set(string key, VImage value)
    {
        auto config = ParamConfig(key);
        config.value = new Value(value);
        options[key] = config;
        return this;
    }

    VOption set(string key, VImage* value)
    {
        import gobject.Type : Type;

        auto config = ParamConfig(key);
        config.value = new Value().init(VImage.getType());
        config.isOutput = true;
        config.output.vImage = value;
        options[key] = config;
        return this;
    }

    VOption set(string key, VImage[] value)
    {
        auto config = ParamConfig(key);
        config.value = new Value();
        config.value.init(vips_array_image_get_type());
        vips_value_set_array_image(config.value.getValueStruct(), cast(int)(value.length));
        auto array = vips_value_get_array_image(config.value.getValueStruct, null);
        foreach (i, image; value)
        {
            array[i] = image.getImageStruct();
        }
        options[key] = config;
        return this;
    }

    VOption set(T)(string key, T value)
    {
        auto config = ParamConfig(key);
        config.value = new Value(value);
        options[key] = config;
        return this;
    }

    VOption set(string key, VipsBlob* blob)
    {
        auto config = ParamConfig(key);
        config.value = new Value(new ObjectG(cast(GObject*) blob));
        options[key] = config;
        return this;
    }

    VOption set(T : U*, U)(string key, T value)
    {
        import std.traits : isScalarType;

        auto config = ParamConfig(key);
        config.isOutput = true;
        static if (isScalarType!U)
        {
            config.value = new Value(U.init);
        }
        static if (is(U == int))
        {
            config.output.vInt = value;
        }
        else static if (is(U == bool))
        {
            config.output.vBool = value;
        }
        else static if (is(U == double))
        {
            config.output.vDouble = value;
        }
        else static if (is(U == double[]))
        {
            config.value = new Value().init(vips_array_double_get_type());
            config.output.vDoubleArray = value;
        }
        else static if (is(U == VipsBlob*))
        {
            config.value = new Value().init(vips_blob_get_type());
            config.output.vBlob = value;
        }
        else
        {
            static assert(false, "Unknown output value: " ~ U.stringof);
        }
        options[key] = config;
        return this;
    }

    VOption set(string key, double[] vals)
    {
        auto config = ParamConfig(key);
        config.value = new Value();
        config.value.init(vips_array_double_get_type());
        vips_value_set_array_double(config.value.getValueStruct(), vals.ptr,
                cast(int) vals.length,);
        return this;
    }

    VOption set(string key, int[] vals)
    {
        auto config = ParamConfig(key);
        config.value = new Value(vips_array_int_get_type());
        vips_value_set_array_int(config.value.getValueStruct(), vals.ptr, cast(int) vals.length,);
        return this;
    }

    void setInputs(VipsOperation* operation)
    {
        foreach (option; options)
        {
            if (!option.isOutput)
            {
                setProperty(operation, option.key, option.value);
            }
        }
    }

    void readOutputs(VipsOperation* operation)
    {
        import gobject.Type:Type;
        auto obj = ObjectG.getDObject!ObjectG(cast(GObject*)operation);
        foreach (option; options)
        {
            if (option.isOutput)
            {
                obj.getProperty(option.key, option.value);
                immutable type = option.value.getValueStruct().gType;
                if (type == vips_image_get_type())
                {
                    auto obj = option.value.get!VImage();
                    *(option.output.vImage) = obj !is null ? obj : new VImage(option.value.getObject());
                }
                else if (type == GType.INT)
                {
                    *(option.output.vInt) = option.value.getInt();
                }
                else if (type == GType.BOOLEAN)
                {
                    *(option.output.vBool) = option.value.getBoolean();
                }
                else if (type == GType.DOUBLE)
                {
                    *(option.output.vDouble) = option.value.getDouble();
                }
            }
        }
    }

private:
    ParamConfig[string] options;

    void setProperty(VipsOperation* operation, string key, Value value)
    {
        import std.string : toStringz;

        g_object_set_property(cast(GObject*) operation, key.toStringz, value.getValueStruct);
    }
}
