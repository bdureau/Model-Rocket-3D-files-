/****************************************************************
* title: rocket payload end cap
* author: Boris du Reau
* version: 1.0
* date: 07/02/2015
* Description: print a coupler
* Howto use it:
* Modify the variables values so that it fits to your rocket tube 
* then just click on "compile and render" 
* Note that all units ar metrics
*****************************************************************/


/* adjust variables here */ 
/* It is recommended to print a sample to make sure that the diameter is correct */


resolution=50;
capHeight = 3;
capCouplerHeight = 10;
tubeThickness=2.5;
capOutDiameter = 60;
//set to true if you want holes or set to false if you don't
drillHoles = true;
holeDiameter = 3.5;
distanceBetweenSwitches=30;
distanceBetweenHole = 45;
distanceTBlocHole = 25;
butHeight = 11;


/* Do not modify anything after that unless you know what you are doing*/

module payloadCap () {
//cylinder(r=capOutDiameter/2, h=capHeight, $fn=resolution);
translate([distanceBetweenSwitches/2,-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=7, h=butHeight, $fn=resolution);
translate([-distanceBetweenSwitches/2,-(capOutDiameter/5), 8]) rotate ([90,0,0]) cylinder(r=7, h=butHeight, $fn=resolution);
translate([0,0,-(capCouplerHeight-3)]) 
cylinder(r=(capOutDiameter/2)-tubeThickness, h=capCouplerHeight, $fn=resolution);
//translate([-capOutDiameter/2, -3,-10]) cube([capOutDiameter,3,20]);

}


//draw the full payload cap with holes
difference() {
payloadCap ();
translate([-capOutDiameter/2,-33, -(capCouplerHeight-3)])cube([capOutDiameter,10,capCouplerHeight]);
translate([-capOutDiameter/2,5, -(capCouplerHeight-3)])cube([capOutDiameter,capOutDiameter/2,capCouplerHeight]);

translate([distanceBetweenSwitches/2,-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=3, h=butHeight, $fn=resolution);
translate([-distanceBetweenSwitches/2,-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=3, h=butHeight, $fn=resolution);

translate([(distanceBetweenSwitches/2)+5,-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=1, h=butHeight, $fn=resolution);
translate([-5+(distanceBetweenSwitches/2),-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=1, h=butHeight, $fn=resolution);

translate([-((distanceBetweenSwitches/2)+5),-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=1, h=butHeight, $fn=resolution);
translate([5-(distanceBetweenSwitches/2),-(capOutDiameter/5),8 ]) rotate ([90,0,0]) cylinder(r=1, h=butHeight, $fn=resolution);

	if (drillHoles == true)
	{
		//drill a couple of hole
		translate([distanceBetweenHole/2,0,-capCouplerHeight]) cylinder(r=6.5/2, h=capHeight+capCouplerHeight, $fn=resolution);

		translate([-distanceBetweenHole/2,0,-capCouplerHeight]) cylinder(r=6.5/2, h=capHeight+capCouplerHeight, $fn=resolution);
		/*rotate ([90,0,0]) translate([distanceBetweenHole/2,-2,-capHeight/2]) cylinder(r=3.5/2, h=capOutDiameter, $fn=resolution);

		rotate ([90,0,0]) translate([-distanceBetweenHole/2,-2,-capHeight/2]) cylinder(r=3.5/2, h=capOutDiameter, $fn=resolution);

rotate ([90,0,0]) translate([distanceBetweenHole/2,-2,10]) cylinder(r=5.5/2, h=capOutDiameter, $fn=resolution);
rotate ([90,0,0]) translate([-distanceBetweenHole/2,-2,10]) cylinder(r=5.5/2, h=capOutDiameter, $fn=resolution);*/
//center hole
//cylinder(r=4/2, h=capHeight+capCouplerHeight, $fn=resolution);
//terminal bloc
//translate([0,-distanceTBlocHole/2,0]) cylinder(r=3/2, h=capHeight+capCouplerHeight, $fn=resolution);
//translate([0,distanceTBlocHole/2,0]) cylinder(r=3/2, h=capHeight+capCouplerHeight, $fn=resolution);

//wires
//translate([-distanceTBlocHole/2.5,-distanceTBlocHole/2.5,0]) cylinder(r=4.5/2, h=capHeight+capCouplerHeight, $fn=resolution);
//translate([distanceTBlocHole/2.5,distanceTBlocHole/2.5,0]) cylinder(r=4.5/2, h=capHeight+capCouplerHeight, $fn=resolution);

	}
}