/****************************************************************
* title: Retainer 76mm
* author: Boris du Reau
* version: 1.0
* date: 13/06/2026
* 
* Description: 
* Howto use it:
* 
* then just click on "compile and render" 
* Note that all units ar metrics
*****************************************************************/
$fn=100;
module retainer76() {

    difference () {
        cylinder (r1=115/2,r2=98/2, h=23.5, $fn=100);
        cylinder (r=65/2, h=23.5);
        cylinder (r=(78/2), h=20.5, $fn=100);

        //trou
        #rotate ([0,0,0])translate([(92/2),0,0]) cylinder (r=4.5/2, h=24);
        #rotate ([0,0,90])translate([(92/2),0,0]) cylinder (r=4.5/2, h=24);
        #rotate ([0,0,180])translate([(92/2),0,0]) cylinder (r=4.5/2, h=24); 
        #rotate ([0,0,270])translate([(92/2),0,0]) cylinder (r=4.5/2, h=24);   
    }
}

module retainerWasher() {
    difference() {
        circle(d=76.5, $fn=100);
        circle(d=64, $fn=100);
    }
}
//retainer76();
retainerWasher76();