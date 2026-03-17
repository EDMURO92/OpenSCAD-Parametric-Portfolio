// Parametric Phone Stand
angle = 70;
base_length = 100;
base_width = 60;
thickness = 5;
support_height = 70;

module base() {
    cube([base_length, base_width, thickness]);
}

module support() {
    rotate([angle, 0, 0])
        translate([0, 0, thickness])
            cube([base_length, thickness, support_height]);
}

module stopper() {
    translate([0, base_width - 10, thickness])
        cube([base_length, 10, 10]);
}

union() {
    base();
    support();
    stopper();
}