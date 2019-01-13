module vips.types;

enum VipsDirection
{
    HORIZONTAL,
    VERTICAL,
}

enum VipsOperationBoolean
{
    AND,
    OR,
    EOR,
    LSHIFT,
    RSHIFT,
}

enum VipsAngle
{
    D0,
    D90,
    D180,
    D270,
}

enum VipsBandFormat
{
    NOTSET = -1,
    UCHAR,
    CHAR,
    USHORT,
    SHORT,
    UINT,
    INT,
    FLOAT,
    COMPLEX,
    DOUBLE,
    DPCOMPLEX,
}

enum VipsOperationRelational
{
    EQUAL,
    NOTEQ,
    LESS,
    LESSEQ,
    MORE,
    MOREEQ,
}

enum VipsOperationMath2
{
    POW,
    WOP,
}

enum VipsOperationComplex
{
    POLAR,
    RECT,
    CONJ,
}

enum VipsOperationComplexget
{
    VIPSREAL,
    IMAG,
}

enum VipsOperationComplex2
{
    CROSSPHASE,
}

enum VipsOperationMath
{
    SIN,
    COS,
    TAN,
    ASIN,
    ACOS,
    ATAN,
    LOG,
    LOG10,
    EXP,
    EXP10,
}

enum VipsInterpretation
{
    ERROR = -1,
    MULTIBAND,
    BW,
    HISTOGRAM = 10,
    XYZ = 12,
    LAB,
    CMYK = 15,
    LABQ,
    RGB,
    CMC,
    LCH,
    LABS = 21,
    SRGB,
    YXY,
    FOURIER,
    RGB16,
    GREY16,
    MATRIX,
    SCRGB,
    HSV,
}

enum VipsOperationMorphology
{
    ERODE,
    DILATE,
}

enum VipsOperationRound 
{
    RINT,
    CEIL,
    FLOOR,
}

enum VipsCompassDirection
{
    CENTRE,
    NORTH,
    EAST,
    SOUTH,
    WEST,
    NORTHEAST,
    SOUTHEAST,
    SOUTHWEST,
    NORTHWEST,
}

enum VipsBlendMode
{
    CLEAR,
    SOURCE,
    OVER,
    IN,
    OUT,
    ATOP,
    DEST,
    DEST_OVER,
    DEST_IN,
    DEST_OUT,
    DEST_ATOP,
    XOR,
    ADD,
    SATURATE,
    MULTIPLY,
    SCREEN,
    OVERLAY,
    DARKEN,
    LIGHTEN,
    COLOUR_DODG,
    COLOUR_BURN,
    HARD_LIGHT,
    SOFT_LIGHT,
    DIFFERENCE,
    EXCLUSION,
}
