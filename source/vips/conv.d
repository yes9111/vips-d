module vips.conv;

import vips.bindings : GObject;

/**
 * Similar to G_X macro with type safety
 * Convert any obj to GObject
 */
GObject* toGObject(void* p)
{
    return cast(GObject*)p;
}
