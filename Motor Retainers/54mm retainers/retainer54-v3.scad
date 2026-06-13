$fn=60;
module main() {
cylinder (r=76.14/2, h=1.35);
cylinder (r=61.5/2, h=12);

}

difference ()
{
main();
cylinder (r=44.82/2, h=12);
cylinder (r=(61.5/2)-1.35, h=10.5);

//trou
    
rotate ([0,0,120])translate([(68/2),0,0]) cylinder (r=3.5/2, h=1.5);
rotate ([0,0,240])translate([(68/2),0,0]) cylinder (r=3.5/2, h=1.5);
rotate ([0,0,360])translate([(68/2),0,0]) cylinder (r=3.5/2, h=1.5);

/*translate([-(68/2),0,0])cylinder (r=3.5/2, h=1.5);
*/
}
