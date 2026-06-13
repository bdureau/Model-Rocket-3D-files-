
/****************************************************************
* title: Retainer 38mm
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

module retainer38() {
    difference ()
    {
        union(){
            cylinder (r1=70.5/2,r2=59.5/2, h=13, $fn=100);
            cylinder (r=45/2, h=13);
        }
        cylinder (r=35.3/2, h=13);
        cylinder (r=(45/2), h=11.5);

        //holes
        #translate([(52/2),0,0]) cylinder (r=3.5/2, h=15);
        #translate([-(52/2),0,0])cylinder (r=3.5/2, h=15);
    }
}

module washer38() {
    difference() {
        circle(d=44.5, $fn=100);
        circle(d=35.5, $fn=100);
    }
}

retainer38();
//washer38();