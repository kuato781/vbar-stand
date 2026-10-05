// Same assembly origin as HEADER-CORE and BAR. Keep all three aligned.
include <_vbar_stand_geometry.scad>
exact_mesh = true;
if (exact_mesh) import("mesh/VBar-SMUT-Stand-WRAP.stl",convexity=10);
else v_wrap();
