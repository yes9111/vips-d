module vips.operations;

/**

THIS FILE IS AUTO-GENERATED, DO NOT EDIT

You can regenerate this file by running the gen-operators.d script

rdmd gen-operators.d

Operators were generated for the following Vips version
8.7.1

*/

import vips.base;
import vips.bindings;

void system(string cmd_format, VOption options = VOption())
{
	baseOp("system",
		options
			.set("cmd-format", cmd_format)
	);
}

VImage add(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("add",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage subtract(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("subtract",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage multiply(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("multiply",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage divide(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("divide",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage relational(VImage left, VImage right, VipsOperationRelational relational, VOption options = VOption())
{
	VImage output;
	baseOp("relational",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
			.set("relational", relational)
	);
	return output;
}

VImage remainder(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("remainder",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage boolean(VImage left, VImage right, VipsOperationBoolean boolean, VOption options = VOption())
{
	VImage output;
	baseOp("boolean",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
			.set("boolean", boolean)
	);
	return output;
}

VImage math2(VImage left, VImage right, VipsOperationMath2 math2, VOption options = VOption())
{
	VImage output;
	baseOp("math2",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
			.set("math2", math2)
	);
	return output;
}

VImage complex2(VImage left, VImage right, VipsOperationComplex2 cmplx, VOption options = VOption())
{
	VImage output;
	baseOp("complex2",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
			.set("cmplx", cmplx)
	);
	return output;
}

VImage complexform(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("complexform",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage sum(VImage[] input, VOption options = VOption())
{
	VImage output;
	baseOp("sum",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage invert(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("invert",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage linear(VImage input, double[] a, double[] b, VOption options = VOption())
{
	VImage output;
	baseOp("linear",
		options
			.set("in", input)
			.set("out", &output)
			.set("a", a)
			.set("b", b)
	);
	return output;
}

VImage math(VImage input, VipsOperationMath math, VOption options = VOption())
{
	VImage output;
	baseOp("math",
		options
			.set("in", input)
			.set("out", &output)
			.set("math", math)
	);
	return output;
}

VImage abs(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("abs",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage sign(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("sign",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage round(VImage input, VipsOperationRound round, VOption options = VOption())
{
	VImage output;
	baseOp("round",
		options
			.set("in", input)
			.set("out", &output)
			.set("round", round)
	);
	return output;
}

VImage relational_const(VImage input, VipsOperationRelational relational, double[] c, VOption options = VOption())
{
	VImage output;
	baseOp("relational_const",
		options
			.set("in", input)
			.set("out", &output)
			.set("relational", relational)
			.set("c", c)
	);
	return output;
}

VImage remainder_const(VImage input, double[] c, VOption options = VOption())
{
	VImage output;
	baseOp("remainder_const",
		options
			.set("in", input)
			.set("out", &output)
			.set("c", c)
	);
	return output;
}

VImage boolean_const(VImage input, VipsOperationBoolean boolean, double[] c, VOption options = VOption())
{
	VImage output;
	baseOp("boolean_const",
		options
			.set("in", input)
			.set("out", &output)
			.set("boolean", boolean)
			.set("c", c)
	);
	return output;
}

VImage math2_const(VImage input, VipsOperationMath2 math2, double[] c, VOption options = VOption())
{
	VImage output;
	baseOp("math2_const",
		options
			.set("in", input)
			.set("out", &output)
			.set("math2", math2)
			.set("c", c)
	);
	return output;
}

VImage complex(VImage input, VipsOperationComplex cmplx, VOption options = VOption())
{
	VImage output;
	baseOp("complex",
		options
			.set("in", input)
			.set("out", &output)
			.set("cmplx", cmplx)
	);
	return output;
}

VImage complexget(VImage input, VipsOperationComplexget get, VOption options = VOption())
{
	VImage output;
	baseOp("complexget",
		options
			.set("in", input)
			.set("out", &output)
			.set("get", get)
	);
	return output;
}

double avg(VImage input, VOption options = VOption())
{
	double output;
	baseOp("avg",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

double min(VImage input, VOption options = VOption())
{
	double output;
	baseOp("min",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

double max(VImage input, VOption options = VOption())
{
	double output;
	baseOp("max",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

double deviate(VImage input, VOption options = VOption())
{
	double output;
	baseOp("deviate",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage stats(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("stats",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_find(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hist_find",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_find_ndim(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hist_find_ndim",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_find_indexed(VImage input, VImage index, VOption options = VOption())
{
	VImage output;
	baseOp("hist_find_indexed",
		options
			.set("in", input)
			.set("index", index)
			.set("out", &output)
	);
	return output;
}

VImage hough_line(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hough_line",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hough_circle(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hough_circle",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage project(VImage input, out VImage rows, VOption options = VOption())
{
	VImage columns;
	baseOp("project",
		options
			.set("in", input)
			.set("columns", &columns)
			.set("rows", &rows)
	);
	return columns;
}

VImage profile(VImage input, out VImage rows, VOption options = VOption())
{
	VImage columns;
	baseOp("profile",
		options
			.set("in", input)
			.set("columns", &columns)
			.set("rows", &rows)
	);
	return columns;
}

VImage measure(VImage input, int h, int v, VOption options = VOption())
{
	VImage output;
	baseOp("measure",
		options
			.set("in", input)
			.set("out", &output)
			.set("h", h)
			.set("v", v)
	);
	return output;
}

double[] getpoint(VImage input, int x, int y, VOption options = VOption())
{
	double[] out_array;
	baseOp("getpoint",
		options
			.set("in", input)
			.set("out-array", &out_array)
			.set("x", x)
			.set("y", y)
	);
	return out_array;
}

int find_trim(VImage input, out int top, out int width, out int height, VOption options = VOption())
{
	int left;
	baseOp("find_trim",
		options
			.set("in", input)
			.set("left", &left)
			.set("top", &top)
			.set("width", &width)
			.set("height", &height)
	);
	return left;
}

VImage copy(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("copy",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage tilecache(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("tilecache",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage linecache(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("linecache",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage sequential(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("sequential",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage cache(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("cache",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage embed(VImage input, int x, int y, int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("embed",
		options
			.set("in", input)
			.set("out", &output)
			.set("x", x)
			.set("y", y)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage gravity(VImage input, VipsCompassDirection direction, int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("gravity",
		options
			.set("in", input)
			.set("out", &output)
			.set("direction", direction)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage flip(VImage input, VipsDirection direction, VOption options = VOption())
{
	VImage output;
	baseOp("flip",
		options
			.set("in", input)
			.set("out", &output)
			.set("direction", direction)
	);
	return output;
}

VImage insert(VImage main, VImage sub, int x, int y, VOption options = VOption())
{
	VImage output;
	baseOp("insert",
		options
			.set("main", main)
			.set("sub", sub)
			.set("out", &output)
			.set("x", x)
			.set("y", y)
	);
	return output;
}

VImage join(VImage in1, VImage in2, VipsDirection direction, VOption options = VOption())
{
	VImage output;
	baseOp("join",
		options
			.set("in1", in1)
			.set("in2", in2)
			.set("out", &output)
			.set("direction", direction)
	);
	return output;
}

VImage arrayjoin(VImage[] input, VOption options = VOption())
{
	VImage output;
	baseOp("arrayjoin",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage extract_area(VImage input, int left, int top, int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("extract_area",
		options
			.set("input", input)
			.set("out", &output)
			.set("left", left)
			.set("top", top)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage smartcrop(VImage input, int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("smartcrop",
		options
			.set("input", input)
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage extract_band(VImage input, int band, VOption options = VOption())
{
	VImage output;
	baseOp("extract_band",
		options
			.set("in", input)
			.set("out", &output)
			.set("band", band)
	);
	return output;
}

VImage bandjoin(VImage[] input, VOption options = VOption())
{
	VImage output;
	baseOp("bandjoin",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage bandjoin_const(VImage input, double[] c, VOption options = VOption())
{
	VImage output;
	baseOp("bandjoin_const",
		options
			.set("in", input)
			.set("out", &output)
			.set("c", c)
	);
	return output;
}

VImage bandrank(VImage[] input, VOption options = VOption())
{
	VImage output;
	baseOp("bandrank",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage bandmean(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("bandmean",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage bandbool(VImage input, VipsOperationBoolean boolean, VOption options = VOption())
{
	VImage output;
	baseOp("bandbool",
		options
			.set("in", input)
			.set("out", &output)
			.set("boolean", boolean)
	);
	return output;
}

VImage replicate(VImage input, int across, int down, VOption options = VOption())
{
	VImage output;
	baseOp("replicate",
		options
			.set("in", input)
			.set("out", &output)
			.set("across", across)
			.set("down", down)
	);
	return output;
}

VImage vipsCast(VImage input, VipsBandFormat format, VOption options = VOption())
{
	VImage output;
	baseOp("cast",
		options
			.set("in", input)
			.set("out", &output)
			.set("format", format)
	);
	return output;
}

VImage rot(VImage input, VipsAngle angle, VOption options = VOption())
{
	VImage output;
	baseOp("rot",
		options
			.set("in", input)
			.set("out", &output)
			.set("angle", angle)
	);
	return output;
}

VImage rot45(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("rot45",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage autorot(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("autorot",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage ifthenelse(VImage cond, VImage in1, VImage in2, VOption options = VOption())
{
	VImage output;
	baseOp("ifthenelse",
		options
			.set("cond", cond)
			.set("in1", in1)
			.set("in2", in2)
			.set("out", &output)
	);
	return output;
}

VImage recomb(VImage input, VImage m, VOption options = VOption())
{
	VImage output;
	baseOp("recomb",
		options
			.set("in", input)
			.set("out", &output)
			.set("m", m)
	);
	return output;
}

VImage bandfold(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("bandfold",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage bandunfold(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("bandunfold",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage flatten(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("flatten",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage premultiply(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("premultiply",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage unpremultiply(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("unpremultiply",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage grid(VImage input, int tile_height, int across, int down, VOption options = VOption())
{
	VImage output;
	baseOp("grid",
		options
			.set("in", input)
			.set("out", &output)
			.set("tile-height", tile_height)
			.set("across", across)
			.set("down", down)
	);
	return output;
}

VImage transpose3d(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("transpose3d",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage scale(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("scale",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage wrap(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("wrap",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage zoom(VImage input, int xfac, int yfac, VOption options = VOption())
{
	VImage output;
	baseOp("zoom",
		options
			.set("input", input)
			.set("out", &output)
			.set("xfac", xfac)
			.set("yfac", yfac)
	);
	return output;
}

VImage subsample(VImage input, int xfac, int yfac, VOption options = VOption())
{
	VImage output;
	baseOp("subsample",
		options
			.set("input", input)
			.set("out", &output)
			.set("xfac", xfac)
			.set("yfac", yfac)
	);
	return output;
}

VImage msb(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("msb",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage byteswap(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("byteswap",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage falsecolour(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("falsecolour",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage gamma(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("gamma",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage composite(VImage[] input, int[] mode, VOption options = VOption())
{
	VImage output;
	baseOp("composite",
		options
			.set("in", input)
			.set("out", &output)
			.set("mode", mode)
	);
	return output;
}

VImage composite2(VImage base, VImage overlay, VipsBlendMode mode, VOption options = VOption())
{
	VImage output;
	baseOp("composite2",
		options
			.set("base", base)
			.set("overlay", overlay)
			.set("out", &output)
			.set("mode", mode)
	);
	return output;
}

VImage black(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("black",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage gaussnoise(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("gaussnoise",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage text(string text, VOption options = VOption())
{
	VImage output;
	baseOp("text",
		options
			.set("out", &output)
			.set("text", text)
	);
	return output;
}

VImage xyz(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("xyz",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage gaussmat(double sigma, double min_ampl, VOption options = VOption())
{
	VImage output;
	baseOp("gaussmat",
		options
			.set("out", &output)
			.set("sigma", sigma)
			.set("min-ampl", min_ampl)
	);
	return output;
}

VImage logmat(double sigma, double min_ampl, VOption options = VOption())
{
	VImage output;
	baseOp("logmat",
		options
			.set("out", &output)
			.set("sigma", sigma)
			.set("min-ampl", min_ampl)
	);
	return output;
}

VImage eye(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("eye",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage grey(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("grey",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage zone(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("zone",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage sines(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("sines",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage mask_ideal(int width, int height, double frequency_cutoff, VOption options = VOption())
{
	VImage output;
	baseOp("mask_ideal",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("frequency-cutoff", frequency_cutoff)
	);
	return output;
}

VImage mask_ideal_ring(int width, int height, double frequency_cutoff, double ringwidth, VOption options = VOption())
{
	VImage output;
	baseOp("mask_ideal_ring",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("frequency-cutoff", frequency_cutoff)
			.set("ringwidth", ringwidth)
	);
	return output;
}

VImage mask_ideal_band(int width, int height, double frequency_cutoff_x, double frequency_cutoff_y, double radius, VOption options = VOption())
{
	VImage output;
	baseOp("mask_ideal_band",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("frequency-cutoff-x", frequency_cutoff_x)
			.set("frequency-cutoff-y", frequency_cutoff_y)
			.set("radius", radius)
	);
	return output;
}

VImage mask_butterworth(int width, int height, double order, double frequency_cutoff, double amplitude_cutoff, VOption options = VOption())
{
	VImage output;
	baseOp("mask_butterworth",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("order", order)
			.set("frequency-cutoff", frequency_cutoff)
			.set("amplitude-cutoff", amplitude_cutoff)
	);
	return output;
}

VImage mask_butterworth_ring(int width, int height, double order, double frequency_cutoff, double amplitude_cutoff, double ringwidth, VOption options = VOption())
{
	VImage output;
	baseOp("mask_butterworth_ring",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("order", order)
			.set("frequency-cutoff", frequency_cutoff)
			.set("amplitude-cutoff", amplitude_cutoff)
			.set("ringwidth", ringwidth)
	);
	return output;
}

VImage mask_butterworth_band(int width, int height, double order, double frequency_cutoff_x, double frequency_cutoff_y, double radius, double amplitude_cutoff, VOption options = VOption())
{
	VImage output;
	baseOp("mask_butterworth_band",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("order", order)
			.set("frequency-cutoff-x", frequency_cutoff_x)
			.set("frequency-cutoff-y", frequency_cutoff_y)
			.set("radius", radius)
			.set("amplitude-cutoff", amplitude_cutoff)
	);
	return output;
}

VImage mask_gaussian(int width, int height, double frequency_cutoff, double amplitude_cutoff, VOption options = VOption())
{
	VImage output;
	baseOp("mask_gaussian",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("frequency-cutoff", frequency_cutoff)
			.set("amplitude-cutoff", amplitude_cutoff)
	);
	return output;
}

VImage mask_gaussian_ring(int width, int height, double frequency_cutoff, double amplitude_cutoff, double ringwidth, VOption options = VOption())
{
	VImage output;
	baseOp("mask_gaussian_ring",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("frequency-cutoff", frequency_cutoff)
			.set("amplitude-cutoff", amplitude_cutoff)
			.set("ringwidth", ringwidth)
	);
	return output;
}

VImage mask_gaussian_band(int width, int height, double frequency_cutoff_x, double frequency_cutoff_y, double radius, double amplitude_cutoff, VOption options = VOption())
{
	VImage output;
	baseOp("mask_gaussian_band",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("frequency-cutoff-x", frequency_cutoff_x)
			.set("frequency-cutoff-y", frequency_cutoff_y)
			.set("radius", radius)
			.set("amplitude-cutoff", amplitude_cutoff)
	);
	return output;
}

VImage mask_fractal(int width, int height, double fractal_dimension, VOption options = VOption())
{
	VImage output;
	baseOp("mask_fractal",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("fractal-dimension", fractal_dimension)
	);
	return output;
}

VImage buildlut(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("buildlut",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage invertlut(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("invertlut",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage tonelut(VOption options = VOption())
{
	VImage output;
	baseOp("tonelut",
		options
			.set("out", &output)
	);
	return output;
}

VImage identity(VOption options = VOption())
{
	VImage output;
	baseOp("identity",
		options
			.set("out", &output)
	);
	return output;
}

VImage fractsurf(int width, int height, double fractal_dimension, VOption options = VOption())
{
	VImage output;
	baseOp("fractsurf",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("fractal-dimension", fractal_dimension)
	);
	return output;
}

VImage worley(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("worley",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage perlin(int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("perlin",
		options
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage csvload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("csvload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage matrixload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("matrixload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage rawload(string filename, int width, int height, int bands, VOption options = VOption())
{
	VImage output;
	baseOp("rawload",
		options
			.set("filename", filename)
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("bands", bands)
	);
	return output;
}

VImage vipsload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("vipsload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage analyzeload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("analyzeload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage ppmload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("ppmload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage radload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("radload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage pngload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("pngload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage pngload_buffer(VipsBlob* buffer, VOption options = VOption())
{
	VImage output;
	baseOp("pngload_buffer",
		options
			.set("buffer", buffer)
			.set("out", &output)
	);
	return output;
}

VImage jpegload(string filename, VOption options = VOption())
{
	VImage output;
	baseOp("jpegload",
		options
			.set("filename", filename)
			.set("out", &output)
	);
	return output;
}

VImage jpegload_buffer(VipsBlob* buffer, VOption options = VOption())
{
	VImage output;
	baseOp("jpegload_buffer",
		options
			.set("buffer", buffer)
			.set("out", &output)
	);
	return output;
}

void csvsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("csvsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

void matrixsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("matrixsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

void matrixprint(VImage input, VOption options = VOption())
{
	baseOp("matrixprint",
		options
			.set("in", input)
	);
}

void rawsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("rawsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

void rawsave_fd(VImage input, int fd, VOption options = VOption())
{
	baseOp("rawsave_fd",
		options
			.set("in", input)
			.set("fd", fd)
	);
}

void vipssave(VImage input, string filename, VOption options = VOption())
{
	baseOp("vipssave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

void ppmsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("ppmsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

void radsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("radsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

VipsBlob* radsave_buffer(VImage input, VOption options = VOption())
{
	VipsBlob* buffer;
	baseOp("radsave_buffer",
		options
			.set("in", input)
			.set("buffer", &buffer)
	);
	return buffer;
}

void pngsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("pngsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

VipsBlob* pngsave_buffer(VImage input, VOption options = VOption())
{
	VipsBlob* buffer;
	baseOp("pngsave_buffer",
		options
			.set("in", input)
			.set("buffer", &buffer)
	);
	return buffer;
}

void jpegsave(VImage input, string filename, VOption options = VOption())
{
	baseOp("jpegsave",
		options
			.set("in", input)
			.set("filename", filename)
	);
}

VipsBlob* jpegsave_buffer(VImage input, VOption options = VOption())
{
	VipsBlob* buffer;
	baseOp("jpegsave_buffer",
		options
			.set("in", input)
			.set("buffer", &buffer)
	);
	return buffer;
}

void jpegsave_mime(VImage input, VOption options = VOption())
{
	baseOp("jpegsave_mime",
		options
			.set("in", input)
	);
}

VImage thumbnail(string filename, int width, VOption options = VOption())
{
	VImage output;
	baseOp("thumbnail",
		options
			.set("filename", filename)
			.set("out", &output)
			.set("width", width)
	);
	return output;
}

VImage thumbnail_buffer(VipsBlob* buffer, int width, VOption options = VOption())
{
	VImage output;
	baseOp("thumbnail_buffer",
		options
			.set("buffer", buffer)
			.set("out", &output)
			.set("width", width)
	);
	return output;
}

VImage thumbnail_image(VImage input, int width, VOption options = VOption())
{
	VImage output;
	baseOp("thumbnail_image",
		options
			.set("in", input)
			.set("out", &output)
			.set("width", width)
	);
	return output;
}

VImage mapim(VImage input, VImage index, VOption options = VOption())
{
	VImage output;
	baseOp("mapim",
		options
			.set("in", input)
			.set("out", &output)
			.set("index", index)
	);
	return output;
}

VImage shrink(VImage input, double hshrink, double vshrink, VOption options = VOption())
{
	VImage output;
	baseOp("shrink",
		options
			.set("in", input)
			.set("out", &output)
			.set("hshrink", hshrink)
			.set("vshrink", vshrink)
	);
	return output;
}

VImage shrinkh(VImage input, int hshrink, VOption options = VOption())
{
	VImage output;
	baseOp("shrinkh",
		options
			.set("in", input)
			.set("out", &output)
			.set("hshrink", hshrink)
	);
	return output;
}

VImage shrinkv(VImage input, int vshrink, VOption options = VOption())
{
	VImage output;
	baseOp("shrinkv",
		options
			.set("in", input)
			.set("out", &output)
			.set("vshrink", vshrink)
	);
	return output;
}

VImage reduceh(VImage input, double hshrink, VOption options = VOption())
{
	VImage output;
	baseOp("reduceh",
		options
			.set("in", input)
			.set("out", &output)
			.set("hshrink", hshrink)
	);
	return output;
}

VImage reducev(VImage input, double vshrink, VOption options = VOption())
{
	VImage output;
	baseOp("reducev",
		options
			.set("in", input)
			.set("out", &output)
			.set("vshrink", vshrink)
	);
	return output;
}

VImage reduce(VImage input, double hshrink, double vshrink, VOption options = VOption())
{
	VImage output;
	baseOp("reduce",
		options
			.set("in", input)
			.set("out", &output)
			.set("hshrink", hshrink)
			.set("vshrink", vshrink)
	);
	return output;
}

VImage quadratic(VImage input, VImage coeff, VOption options = VOption())
{
	VImage output;
	baseOp("quadratic",
		options
			.set("in", input)
			.set("out", &output)
			.set("coeff", coeff)
	);
	return output;
}

VImage affine(VImage input, double[] matrix, VOption options = VOption())
{
	VImage output;
	baseOp("affine",
		options
			.set("in", input)
			.set("out", &output)
			.set("matrix", matrix)
	);
	return output;
}

VImage similarity(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("similarity",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage rotate(VImage input, double angle, VOption options = VOption())
{
	VImage output;
	baseOp("rotate",
		options
			.set("in", input)
			.set("out", &output)
			.set("angle", angle)
	);
	return output;
}

VImage resize(VImage input, double scale, VOption options = VOption())
{
	VImage output;
	baseOp("resize",
		options
			.set("in", input)
			.set("out", &output)
			.set("scale", scale)
	);
	return output;
}

VImage colourspace(VImage input, VipsInterpretation space, VOption options = VOption())
{
	VImage output;
	baseOp("colourspace",
		options
			.set("in", input)
			.set("out", &output)
			.set("space", space)
	);
	return output;
}

VImage Lab2XYZ(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("Lab2XYZ",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage XYZ2Lab(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("XYZ2Lab",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage Lab2LCh(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("Lab2LCh",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LCh2Lab(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LCh2Lab",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LCh2CMC(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LCh2CMC",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage CMC2LCh(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("CMC2LCh",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage XYZ2Yxy(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("XYZ2Yxy",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage Yxy2XYZ(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("Yxy2XYZ",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage scRGB2XYZ(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("scRGB2XYZ",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage XYZ2scRGB(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("XYZ2scRGB",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LabQ2Lab(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LabQ2Lab",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage Lab2LabQ(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("Lab2LabQ",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LabQ2LabS(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LabQ2LabS",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LabS2LabQ(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LabS2LabQ",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LabS2Lab(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LabS2Lab",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage Lab2LabS(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("Lab2LabS",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage rad2float(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("rad2float",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage float2rad(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("float2rad",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage LabQ2sRGB(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("LabQ2sRGB",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage sRGB2HSV(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("sRGB2HSV",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage HSV2sRGB(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("HSV2sRGB",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage dE76(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("dE76",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage dE00(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("dE00",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage dECMC(VImage left, VImage right, VOption options = VOption())
{
	VImage output;
	baseOp("dECMC",
		options
			.set("left", left)
			.set("right", right)
			.set("out", &output)
	);
	return output;
}

VImage sRGB2scRGB(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("sRGB2scRGB",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage scRGB2BW(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("scRGB2BW",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage scRGB2sRGB(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("scRGB2sRGB",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage maplut(VImage input, VImage lut, VOption options = VOption())
{
	VImage output;
	baseOp("maplut",
		options
			.set("in", input)
			.set("out", &output)
			.set("lut", lut)
	);
	return output;
}

int percent(VImage input, double percent, VOption options = VOption())
{
	int threshold;
	baseOp("percent",
		options
			.set("in", input)
			.set("percent", percent)
			.set("threshold", &threshold)
	);
	return threshold;
}

VImage stdif(VImage input, int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("stdif",
		options
			.set("in", input)
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

VImage hist_cum(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hist_cum",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_match(VImage input, VImage vipsRef, VOption options = VOption())
{
	VImage output;
	baseOp("hist_match",
		options
			.set("in", input)
			.set("ref", vipsRef)
			.set("out", &output)
	);
	return output;
}

VImage hist_norm(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hist_norm",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_equal(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hist_equal",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_plot(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("hist_plot",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage hist_local(VImage input, int width, int height, VOption options = VOption())
{
	VImage output;
	baseOp("hist_local",
		options
			.set("in", input)
			.set("out", &output)
			.set("width", width)
			.set("height", height)
	);
	return output;
}

bool hist_ismonotonic(VImage input, VOption options = VOption())
{
	bool monotonic;
	baseOp("hist_ismonotonic",
		options
			.set("in", input)
			.set("monotonic", &monotonic)
	);
	return monotonic;
}

double hist_entropy(VImage input, VOption options = VOption())
{
	double output;
	baseOp("hist_entropy",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage conv(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("conv",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage conva(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("conva",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage convf(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("convf",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage convi(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("convi",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage compass(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("compass",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage convsep(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("convsep",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage convasep(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("convasep",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
	);
	return output;
}

VImage fastcor(VImage input, VImage vipsRef, VOption options = VOption())
{
	VImage output;
	baseOp("fastcor",
		options
			.set("in", input)
			.set("ref", vipsRef)
			.set("out", &output)
	);
	return output;
}

VImage spcor(VImage input, VImage vipsRef, VOption options = VOption())
{
	VImage output;
	baseOp("spcor",
		options
			.set("in", input)
			.set("ref", vipsRef)
			.set("out", &output)
	);
	return output;
}

VImage sharpen(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("sharpen",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage gaussblur(VImage input, double sigma, VOption options = VOption())
{
	VImage output;
	baseOp("gaussblur",
		options
			.set("in", input)
			.set("out", &output)
			.set("sigma", sigma)
	);
	return output;
}

VImage canny(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("canny",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage sobel(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("sobel",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage fwfft(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("fwfft",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage invfft(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("invfft",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage freqmult(VImage input, VImage mask, VOption options = VOption())
{
	VImage output;
	baseOp("freqmult",
		options
			.set("in", input)
			.set("mask", mask)
			.set("out", &output)
	);
	return output;
}

VImage spectrum(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("spectrum",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

VImage phasecor(VImage input, VImage in2, VOption options = VOption())
{
	VImage output;
	baseOp("phasecor",
		options
			.set("in", input)
			.set("in2", in2)
			.set("out", &output)
	);
	return output;
}

VImage morph(VImage input, VImage mask, VipsOperationMorphology morph, VOption options = VOption())
{
	VImage output;
	baseOp("morph",
		options
			.set("in", input)
			.set("out", &output)
			.set("mask", mask)
			.set("morph", morph)
	);
	return output;
}

VImage rank(VImage input, int width, int height, int index, VOption options = VOption())
{
	VImage output;
	baseOp("rank",
		options
			.set("in", input)
			.set("out", &output)
			.set("width", width)
			.set("height", height)
			.set("index", index)
	);
	return output;
}

double countlines(VImage input, VipsDirection direction, VOption options = VOption())
{
	double nolines;
	baseOp("countlines",
		options
			.set("in", input)
			.set("nolines", &nolines)
			.set("direction", direction)
	);
	return nolines;
}

VImage labelregions(VImage input, VOption options = VOption())
{
	VImage mask;
	baseOp("labelregions",
		options
			.set("in", input)
			.set("mask", &mask)
	);
	return mask;
}

VImage fill_nearest(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("fill_nearest",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

void draw_rect(VImage image, double[] ink, int left, int top, int width, int height, VOption options = VOption())
{
	baseOp("draw_rect",
		options
			.set("image", image)
			.set("ink", ink)
			.set("left", left)
			.set("top", top)
			.set("width", width)
			.set("height", height)
	);
}

void draw_mask(VImage image, double[] ink, VImage mask, int x, int y, VOption options = VOption())
{
	baseOp("draw_mask",
		options
			.set("image", image)
			.set("ink", ink)
			.set("mask", mask)
			.set("x", x)
			.set("y", y)
	);
}

void draw_line(VImage image, double[] ink, int x1, int y1, int x2, int y2, VOption options = VOption())
{
	baseOp("draw_line",
		options
			.set("image", image)
			.set("ink", ink)
			.set("x1", x1)
			.set("y1", y1)
			.set("x2", x2)
			.set("y2", y2)
	);
}

void draw_circle(VImage image, double[] ink, int cx, int cy, int radius, VOption options = VOption())
{
	baseOp("draw_circle",
		options
			.set("image", image)
			.set("ink", ink)
			.set("cx", cx)
			.set("cy", cy)
			.set("radius", radius)
	);
}

void draw_flood(VImage image, double[] ink, int x, int y, VOption options = VOption())
{
	baseOp("draw_flood",
		options
			.set("image", image)
			.set("ink", ink)
			.set("x", x)
			.set("y", y)
	);
}

void draw_image(VImage image, VImage sub, int x, int y, VOption options = VOption())
{
	baseOp("draw_image",
		options
			.set("image", image)
			.set("sub", sub)
			.set("x", x)
			.set("y", y)
	);
}

void draw_smudge(VImage image, int left, int top, int width, int height, VOption options = VOption())
{
	baseOp("draw_smudge",
		options
			.set("image", image)
			.set("left", left)
			.set("top", top)
			.set("width", width)
			.set("height", height)
	);
}

VImage merge(VImage vipsRef, VImage sec, VipsDirection direction, int dx, int dy, VOption options = VOption())
{
	VImage output;
	baseOp("merge",
		options
			.set("ref", vipsRef)
			.set("sec", sec)
			.set("out", &output)
			.set("direction", direction)
			.set("dx", dx)
			.set("dy", dy)
	);
	return output;
}

VImage mosaic(VImage vipsRef, VImage sec, VipsDirection direction, int xref, int yref, int xsec, int ysec, VOption options = VOption())
{
	VImage output;
	baseOp("mosaic",
		options
			.set("ref", vipsRef)
			.set("sec", sec)
			.set("out", &output)
			.set("direction", direction)
			.set("xref", xref)
			.set("yref", yref)
			.set("xsec", xsec)
			.set("ysec", ysec)
	);
	return output;
}

VImage mosaic1(VImage vipsRef, VImage sec, VipsDirection direction, int xr1, int yr1, int xs1, int ys1, int xr2, int yr2, int xs2, int ys2, VOption options = VOption())
{
	VImage output;
	baseOp("mosaic1",
		options
			.set("ref", vipsRef)
			.set("sec", sec)
			.set("out", &output)
			.set("direction", direction)
			.set("xr1", xr1)
			.set("yr1", yr1)
			.set("xs1", xs1)
			.set("ys1", ys1)
			.set("xr2", xr2)
			.set("yr2", yr2)
			.set("xs2", xs2)
			.set("ys2", ys2)
	);
	return output;
}

VImage match(VImage vipsRef, VImage sec, int xr1, int yr1, int xs1, int ys1, int xr2, int yr2, int xs2, int ys2, VOption options = VOption())
{
	VImage output;
	baseOp("match",
		options
			.set("ref", vipsRef)
			.set("sec", sec)
			.set("out", &output)
			.set("xr1", xr1)
			.set("yr1", yr1)
			.set("xs1", xs1)
			.set("ys1", ys1)
			.set("xr2", xr2)
			.set("yr2", yr2)
			.set("xs2", xs2)
			.set("ys2", ys2)
	);
	return output;
}

VImage globalbalance(VImage input, VOption options = VOption())
{
	VImage output;
	baseOp("globalbalance",
		options
			.set("in", input)
			.set("out", &output)
	);
	return output;
}

