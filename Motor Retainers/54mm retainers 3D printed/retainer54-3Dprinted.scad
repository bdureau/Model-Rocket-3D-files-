/****************************************************************
* title: Retainer 54mm
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
$fn=60;
module retainer54() {

    difference ()
    {
        cylinder (r1=85/2,r2=76.14/2, h=14.5, $fn=100);
        cylinder (r=44.82/2, h=15);
        cylinder (r=(60/2), h=12, $fn=100);

        //trou   
        rotate ([0,0,120])translate([(68/2),0,0]) cylinder (r=3.5/2, h=15);
        rotate ([0,0,240])translate([(68/2),0,0]) cylinder (r=3.5/2, h=15);
        rotate ([0,0,360])translate([(68/2),0,0]) cylinder (r=3.5/2, h=15);
    }
}

module washer54() {
    difference() {
        circle(d=59.5, $fn=100);
        circle(d=45, $fn=100);
    }
}

//retainer54();
washer54();