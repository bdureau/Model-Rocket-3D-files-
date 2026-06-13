/****************************************************************
* title: 29mm Rowes retainer
* author: Boris du Reau
* version: 1.0
* date: 13/06/2026
* 
* Description: 
* This is model of the Rowes retainer from the hole http://www.rowesretainers.co.uk/ web site
*
* Howto use it:
* 
* click on "compile and render" 
* Note that all units ar metrics
*****************************************************************/


$fn=60;
module main() {
    cylinder (r=49.61/2, h=1.35);
    cylinder (r=35/2, h=11);
}

difference ()
{
    main();
    cylinder (r=25.82/2, h=11);
    cylinder (r=(35/2)-1.35, h=9.5);

    //trou
    translate([(42/2),0,0]) cylinder (r=3.5/2, h=1.5);
    translate([-(42/2),0,0])cylinder (r=3.5/2, h=1.5);
}
