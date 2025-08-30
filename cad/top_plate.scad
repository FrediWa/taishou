use <plate.scad>

top_plate();

module top_plate() {
    switch_hole_size = 15;
    col1_x = 41;
    col_stagger = [-27, -22, -17, -22, -32, -32];
    hole_radii = 1.6;
    holes = [
        [6, -92],
        [26, -82.5]
    ];
    
    difference() {
        
    plate();
        
        
        // Column 1.
        color("red")
        for (i = [0:3]) {
            translate([col1_x, col_stagger[0]- 20*i])
            square(switch_hole_size, center=true );
        }
        // Column 2.
        color("lime")
        for (i = [0:3]) 
            translate([col1_x + 20, col_stagger[1] - 20*i])
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
        for(i = [2:5])
            for(j=[0:4])
                translate([col1_x + 20*i, col_stagger[i]-20*j])
                    square(switch_hole_size, center=true);
            
        // MCU cutout.
        color("green")
        translate([15.8, -50])
            square([23, 54], center=true);
        color("green")
        translate([5.5, -24])
            square([3, 3]);
        color("green")
        translate([23.2, -24])
            square([3, 3]);
        // Place drill holes.
        for (hole = holes) {
            translate([hole[0], hole[1]])
                color("orange")
                    circle(r=hole_radii, center=true);
        }
        
        }
            
         
}