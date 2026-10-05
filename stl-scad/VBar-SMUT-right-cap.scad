// Fit-tested 2.3 cap; the final STL is authoritative.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("VBar-SMUT-right-cap.stl",convexity=10);
        add_material();
    }
    remove_material();
}
