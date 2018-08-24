/*

Description: those spacers are used to assemble my rocket payload altimeters plate. You will need a minimum of 2 of those
Author: Boris du Reau
Date: 24/08/2018
Lenght between rod holes: 44mm
*/
$fn=100; 
// diameter of the holes used to screw the altimeter plate
plate_hole_diam= 3;
spacer_width = 15;
spacer_rod_diam = 5.5;
//lenght between the rod hols
spacer_length= 44;
spacer_height=8;

// main spacer
module spacer() {
cube ([spacer_height,spacer_length,spacer_width ]);
translate ([spacer_height/2, 0,0]) cylinder (h=spacer_width, r=spacer_height/2);
translate ([spacer_height/2, spacer_length,0]) cylinder (h=spacer_width, r=spacer_height/2);
}

difference () {
    spacer();
    // rod holes
    translate ([spacer_height/2, 0,0])cylinder(h=spacer_width, r=spacer_rod_diam/2);
    translate ([spacer_height/2, spacer_length,0])cylinder(h=spacer_width, r=spacer_rod_diam/2);
    //holes to screw the altimeters plate
    rotate ([0,90,0]) translate ([-spacer_width/2,spacer_height,0])cylinder(h=spacer_width, r=plate_hole_diam/2);
    rotate ([0,90,0]) translate ([-spacer_width/2,spacer_length-spacer_height,0])cylinder(h=spacer_width, r=plate_hole_diam/2);  
}
