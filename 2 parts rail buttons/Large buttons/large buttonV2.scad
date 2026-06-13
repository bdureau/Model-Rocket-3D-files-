/****************************************************************
* title: large rail button
* author: Boris du Reau
* version: 1.0
* date: 13/06/2026
* 
* Description: 
* Howto use it:
*  Compile largeButton and export it as STL file to print it
* 
* Note that all units are metrics
*****************************************************************/

module largeButtonPart1() {
    difference() {
        union() {
            cylinder(r = 30 / 2, h = 5, $fn = 200);
            translate([0, 0, 5])cylinder(r = 21 / 2, h = 7.5, $fn = 200);
        }
        cylinder(r = 6.5 / 2, h = 27, $fn = 200);
    }
}


module largeButtonPart2() {
    difference() {
        cylinder(r = 30 / 2, h = 5, $fn = 200);
        cylinder(r = 6.5 / 2, h = 27, $fn = 200);
        cylinder(r1 = 6.5 / 2, r2 = 14 / 2, h = 5, $fn = 200);
    }
}

largeButtonPart1();
//largeButtonPart2();