// Fit-tested 2.3 cap; editable dimensional source is generate_core.py.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("mesh/VBar-SMUT-right-cap.stl",convexity=10);
        add_material();
    }
    remove_material();
}
