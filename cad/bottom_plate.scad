use <plate.scad>

$fn = 20;

bottom_plate();

module bottom_plate() {
    tent_holes = [
        [15,-35],
        [15,-62],
        [15,-110]
    ];
    
    difference() {
        plate();
        for (hole = tent_holes) {
            translate([hole[0],hole[1]])color("cyan")
            circle(r=1.5, center=true);
        }
    }
}