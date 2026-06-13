resolution = 100;
module but () {cylinder (r=9.5/2,h=2, $fn=resolution);

translate([0,0,6]) cylinder (r=9.5/2,h=2, $fn=resolution);

cylinder (r=6.2/2,h=8, $fn=resolution);
}


difference () {
but();
cylinder (r=4/2,h=8, $fn=resolution);
translate ([0,0,6]) cylinder (r1=4/2, r2=8/2, h=2, $fn=resolution);
}