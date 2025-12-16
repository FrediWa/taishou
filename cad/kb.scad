use <bottom_plate.scad>
use <top_plate.scad>

$fn = 20;

translate([0,0,8])
    linear_extrude(3)
        top_plate();

linear_extrude(3)
    bottom_plate();
