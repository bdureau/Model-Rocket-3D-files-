resolution = 100;

module part1() {
difference () {
union() {
    cylinder (r=9.5/2,h=2, $fn=resolution);
    cylinder (r=6.2/2,h=6, $fn=resolution);
}
cylinder (r=4.5/2,h=8, $fn=resolution);
//translate ([0,0,6]) cylinder (r1=4/2, r2=8/2, h=2, $fn=resolution);
}
}


module part2() {
difference () {
cylinder (r=9.5/2,h=2, $fn=resolution);
cylinder (r=4.5/2,h=8, $fn=resolution);
translate ([0,0,0]) cylinder (r1=4.5/2, r2=8/2, h=2, $fn=resolution);
}
}

part1();

//////////////////
/*module but () {cylinder (r=9.5/2,h=2, $fn=resolution);

cylinder (r=6.2/2,h=8/2, $fn=resolution);
}


difference () {
but();
cylinder (r=4/2,h=8, $fn=resolution);
}*/