// Mesh-backed final 2.3 body; the final STL is authoritative.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("VBar-SMUT-right-body.stl",convexity=10);
        add_material();
    }
    remove_material();
}
