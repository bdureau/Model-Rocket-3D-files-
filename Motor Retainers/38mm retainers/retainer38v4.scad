$fn=60;
module main() {
cylinder (r=59.5/2, h=1.35);
cylinder (r=45/2, h=11);

}

difference ()
{
main();
cylinder (r=35.3/2, h=11);
cylinder (r=(45/2)-1.35, h=9.5);

//trou
translate([(52/2),0,0]) cylinder (r=3.5/2, h=1.5);
translate([-(52/2),0,0])cylinder (r=3.5/2, h=1.5);

}
