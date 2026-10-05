// Spirit 0.16 donor carried forward unchanged. Mesh is authoritative.
module add_material() {}
module remove_material() {}
difference() {
    union() {
        import("mesh/VBar-SMUT-detent-ring.stl",convexity=10);
        add_material();
    }
    remove_material();
}
