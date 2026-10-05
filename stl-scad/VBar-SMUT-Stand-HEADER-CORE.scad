// Fits the supplied final 3.4 STL. Set exact_mesh=false to regenerate the
// stand from editable dimensions in _vbar_stand_geometry.scad.
include <_vbar_stand_geometry.scad>
exact_mesh = true;
if (exact_mesh) import("VBar-SMUT-Stand-HEADER-CORE.stl",convexity=10);
else stand_core();
