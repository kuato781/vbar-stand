// Fit-tested 2.3 cap. For dimensional changes use generate_core.py;
// OpenSCAD add/remove modules make local edits against the exact mesh.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("mesh/VBar-SMUT-left-cap.stl",convexity=10);
        add_material();
    }
    remove_material();
}
