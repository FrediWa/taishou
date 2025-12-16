$fn = 20;

plate();

module plate() {
    // Parameters.

    hole_radii = 1.6;

    // Holes.
    holes = [
        [16, -23],
        [81, -5],
        [101, -9.5],
        [144, -20],
        
        [20.17, -99.6],
        [60, -101],
        [80, -111],
        [100, -116],
        [144, -123]
    ];

    // Base outline.
    difference() {
        rotate(-90)
        import("../svg/original-top.svg");

        
        // Place drill holes.
        for (hole = holes) {
            translate([hole[0], hole[1]])
                color("orange")
                    circle(r=hole_radii, center=true);
        }

    }
}