// Mesh-backed final 2.3 body; editable source and donor in cadquery-source/.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("mesh/VBar-SMUT-right-body.stl",convexity=10);
        add_material();
    }
    remove_material();
}
