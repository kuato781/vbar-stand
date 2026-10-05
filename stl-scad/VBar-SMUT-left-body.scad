// Mesh-backed final 2.3 body: the donor/handle union was voxel remeshed.
// The final STL is authoritative; local OpenSCAD changes go below.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("VBar-SMUT-left-body.stl",convexity=10);
        add_material();
    }
    remove_material();
}
