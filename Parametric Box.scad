// Parametric Box
length = 80;
width = 50;
height = 30;
wall_thickness = 2;

module parametric_box(l, w, h, t) {
    difference() {
        cube([l, w, h], center = true);
        translate([t, t, t])
            cube([l - 2*t, w - 2*t, h - 2*t]);
    }
}

parametric_box(length, width, height, wall_thickness);