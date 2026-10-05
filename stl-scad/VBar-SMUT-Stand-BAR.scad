// Raised letters, same assembly origin as the black and colored stand parts.
include <_vbar_stand_geometry.scad>
exact_mesh = true;
if (exact_mesh) import("mesh/VBar-SMUT-Stand-BAR.stl",convexity=10);
else bar_letters();
