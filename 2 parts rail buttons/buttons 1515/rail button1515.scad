/****************************************************************
* title: 1515 rail button
* author: Boris du Reau
* version: 1.0
* date: 13/06/2026
* 
* Description: 
* Howto use it:
*  Compil buttonPart1 and buttonPart2 and export them as STL
* 
* Note that all units are metrics
*****************************************************************/
resolution = 100;

module buttonPart1() {
    difference() {
        union() {
            cylinder(r = 16 / 2, h = 3.15, $fn = resolution);
            cylinder(r = 7.4 / 2, h = 8.5, $fn = resolution);
        }
        cylinder(r = 4.5 / 2, h = 8.5, $fn = resolution);

    }
}


module buttonPart2() {
    difference() {
        cylinder(r = 16 / 2, h = 3.15, $fn = resolution);
        cylinder(r = 4.5 / 2, h = 8.5, $fn = resolution);
        translate([0, 0, 0]) cylinder(r1 = 4.5 / 2, r2 = 8 / 2, h = 3.15, $fn = resolution);
    }
}

buttonPart1();
//buttonPart2();

