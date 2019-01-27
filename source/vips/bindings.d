module vips.bindings;

import gobject.c.types : GObject, GValue, GType;

extern(C)
{
    // Opaque structs
    struct VipsImage;
    struct VipsOperation;
    struct VipsObject;
    struct VipsBlob;

    // Vips error functions
    const(char)* vips_error_buffer();
    void vips_error_clear();
    void vips_cache_set_max (int max);
    void vips_cache_drop_all();
    // Type getter functions
    GType vips_image_get_type();
    GType vips_array_double_get_type();
    GType vips_array_int_get_type();
    GType vips_array_image_get_type();
    GType vips_blob_get_type();

    // misc
    const(char)* vips_foreign_find_load(const char* name);
    const(char)* vips_foreign_find_save(const char* name);
    const(char)* vips_version_string();
    int vips_cache_operation_buildp(VipsOperation** operation);
    VipsOperation* vips_cache_operation_build(VipsOperation* operation);

    VipsOperation* vips_operation_new(const char* opName);
    void vips_value_set_array_int(
        GValue* value,
        const(int)* array,
        int n,
    );
    void vips_value_set_array_double(
        GValue *value,
        const(double)* array,
        int n
    );
    void vips_value_set_array_image(GValue* value, int n);
    VipsImage** vips_value_get_array_image(const(GValue)* value, int *n);
    int vips_init(const char*);
    void vips_leak_set(bool);
    void vips_shutdown();
    void vips_object_unref_outputs(VipsOperation* op);
    int vips_object_build(VipsObject* obj);

    // GObject functions
    void* g_object_ref(void* p);
    void g_object_unref(void* p);
    void g_object_set_property(GObject*, const(char)*, GValue*);
    void g_object_get_property(GObject*, const(char)*, GValue*);
    GObject* g_value_get_object(GValue*);
    void g_value_set_object(GValue*, GObject*);
}


