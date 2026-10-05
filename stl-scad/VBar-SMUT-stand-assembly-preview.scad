// Preview the three stand color parts at their shared assembly origin.
// Export/print the individual SCAD or STL parts, not this combined preview.
color([0.06,0.06,0.06]) import("mesh/VBar-SMUT-Stand-HEADER-CORE.stl",convexity=10);
color([0.98,0.66,0.04]) import("mesh/VBar-SMUT-Stand-WRAP.stl",convexity=10);
color([0.78,0.78,0.78]) import("mesh/VBar-SMUT-Stand-BAR.stl",convexity=10);
