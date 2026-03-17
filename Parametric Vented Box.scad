// Advanced Parametric Vented Box
length = 100;
width = 60;
height = 40;
wall = 3;
vent_spacing = 10;

module box_shell() {
    difference() {
        cube([length, width, height]);
        translate([wall, wall, wall])
            cube([length - 2*wall, width - 2*wall, height - 2*wall]);
    }
}

module vents() {
    for (x = [wall : vent_spacing : length - wall]) {
        translate([x, 0, height/2])
            rotate([90,0,0])
                cylinder(h=width, d=3);
    }
}

difference() {
    box_shell();
    vents();
}