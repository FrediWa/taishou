$fn = 20;
// Parameters.
switch_hole_size = 13.9;
col1_x = 41;
col3_x = 81;
col_stagger = [-17, -22, -32, -32];
hole_radii = 1.6;

// Holes.
holes = [
    [16, -23],
    [81, -5],
    [101, -9.5],
    [144, -20],
    [6, -92],
    [26, -82.5],
    [20.17, -99.6],
    [60, -101],
    [80, -111],
    [100, -116],
    [144, -123]
];

// Base outline.
difference() {
rotate(-90)
    import("../svg/top.svg");

// Column 1.
color("red")
for (i = [0:3]) {
    translate([col1_x, -27- 20*i])
    square(switch_hole_size, center=true );
}
// Column 2.
color("lime")
for (i = [0:3]) 
    translate([col1_x + 20, -22- 20*i])
        square(switch_hole_size, center=true );


// Thumb cluster.
translate([24.5, -121.1])
    color("magenta")
    rotate(30)
        square(switch_hole_size, center=true );
translate([41.6, -111.2])
    color("magenta")
    rotate(30)
        square(switch_hole_size, center=true );

// Columns 3-6.
color("blue")
for(i = [0:3])
    for(j=[0:4])
        translate([col3_x + 20*i, col_stagger[i]-20*j])
            square(switch_hole_size, center=true);
    
// Place drill holes.
for (hole = holes) {
    translate([hole[0], hole[1]])
        color("orange")
            circle(r=hole_radii, center=true);
}

// MCU cutout.
color("green")
translate([15.8, -50])
square([23, 54], center=true);
}