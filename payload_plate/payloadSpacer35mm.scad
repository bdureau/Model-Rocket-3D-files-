/****************************************************************
* title: rocket payload spacer
* author: Boris du Reau
* version: 1.0
* date: 07/02/2018
* 
* Description: print a payload spacer
* Howto use it:
* Modify the variables values so that it fits to your rocket tube 
* then just click on "compile and render" 
* Note that all units ar metrics
*****************************************************************/

/* adjust variables here */ 
/* It is recommended to print a sample to make sure that the diameter is correct */

spacerHeight = 7 ;
spacerWidth = 15 ;
spacerLenght = 40 ;
spacerHoleDiam = 3.5;
spacerHoleDist = 35;
spacerPlateHoleDiam = 3;
resolution = 100;

$fn=resolution; 

module berceau()
{
difference () {
cube([spacerLenght, spacerWidth, spacerHeight]);
translate ([spacerHoleDiam*2+1,spacerWidth/2,0])cylinder(h=spacerWidth, r=spacerPlateHoleDiam/2);
translate ([spacerLenght-(spacerHoleDiam*2+1),spacerWidth/2,0])cylinder(h=spacerWidth, r=spacerPlateHoleDiam/2);
translate ([(spacerLenght/2)-4,0,0])cube([8, 4, spacerHeight]);
}

}

module mybec () {
translate ([6,0,0])cylinder (h=spacerWidth, r=3.5);
rotate ([90,0,0])translate ([3,0,-3.5])berceau();
translate ([spacerLenght,0,0]) cylinder (h=spacerWidth, r=3.5);
}

//mybec ();
difference () {mybec ();
translate ([6,0,-1]) cylinder (h=spacerWidth+2, r=spacerHoleDiam/2);
translate ([spacerLenght,0,-1]) cylinder (h=spacerWidth+2, r=spacerHoleDiam/2);
}
