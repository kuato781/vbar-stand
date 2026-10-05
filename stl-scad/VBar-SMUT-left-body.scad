// Mesh-backed final 2.3 body: the donor/handle union was voxel remeshed.
// For a dimensional rebuild see cadquery-source/generate_core.py and
// cadquery-source/compose_dropout.py. Local OpenSCAD changes go below.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("mesh/VBar-SMUT-left-body.stl",convexity=10);
        add_material();
    }
    remove_material();
}
