// VBar SMUT 3.4 stand, OpenSCAD construction (millimetres).
// The delivered STL meshes are the fit-tested authority. This source exposes
// the design's nominal dimensions for revisions; compare any regenerated
// mesh with the supplied reference before printing it.

header_length = 66;
header_width = 18;
header_thickness = 7;
pivot_spacing = 40;
pivot_bore_d = 4;
head_relief_d = 6;
key_x = 8.06;
key_y = 9.36;
key_depth = 4.115;

plate_thickness = 7;
color_rise = 2;
sidewall_rim = 1.10;
front_trim_width = 3;
base_width = 94;
base_bottom_y = -88;
base_top_y = -64;
base_corner_r = 4;
v_tip_y = 8;
bar_width = 76;
bar_height = 16.5;
bar_center_y = -76;

$fn = 96;

function v_outer_tip() = 27 + (v_tip_y + 7.4)*(27-8)/(69-7.4);
function v_inner_tip() = 16 + (v_tip_y + 7.4)*16/(57-7.4);

module capsule_2d() {
    hull() {
        translate([-(header_length-header_width)/2, 0]) circle(d=header_width);
        translate([ (header_length-header_width)/2, 0]) circle(d=header_width);
    }
}

module stand_outline_2d() {
    union() {
        translate([0,(base_bottom_y+base_top_y)/2])
            offset(r=base_corner_r)
                square([base_width-2*base_corner_r,
                        base_top_y-base_bottom_y-2*base_corner_r], center=true);
        polygon(points=[[-v_outer_tip(),v_tip_y],[-8,-69],[8,-69],
                        [v_outer_tip(),v_tip_y],[v_inner_tip(),v_tip_y],
                        [0,-57],[-v_inner_tip(),v_tip_y]]);
    }
}

module stand_rim_2d(width) {
    difference() {
        stand_outline_2d();
        offset(delta=-width) stand_outline_2d();
    }
}

module stand_core() {
    difference() {
        union() {
            linear_extrude(height=plate_thickness)
                difference() {
                    stand_outline_2d();
                    difference() {
                        stand_rim_2d(sidewall_rim);
                        capsule_2d();
                    }
                }
            linear_extrude(height=header_thickness) capsule_2d();
        }
        for (x=[-pivot_spacing/2,pivot_spacing/2]) {
            translate([x-key_x/2,-key_y/2,-0.1])
                cube([key_x,key_y,key_depth+0.1]);
            translate([x,0,-0.1]) cylinder(d=pivot_bore_d,h=header_thickness+0.2);
        }
    }
}

module v_wrap() {
    difference() {
        union() {
            linear_extrude(height=plate_thickness)
                difference() {
                    stand_rim_2d(sidewall_rim);
                    capsule_2d();
                }
            translate([0,0,plate_thickness])
                linear_extrude(height=color_rise)
                    stand_rim_2d(front_trim_width);
        }
        for (x=[-pivot_spacing/2,pivot_spacing/2])
            translate([x,0,plate_thickness-0.01])
                cylinder(d=head_relief_d,h=color_rise+0.02);
    }
}

module bar_letters() {
    // Exact fonts and tessellation can vary across OpenSCAD installations.
    translate([0,bar_center_y,plate_thickness])
        linear_extrude(height=color_rise)
            resize([bar_width,bar_height])
                text("BAR",size=25,font="Nimbus Sans Narrow:style=Bold",
                     halign="center",valign="center");
}
