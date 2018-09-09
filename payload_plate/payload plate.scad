/*

Description: this payload plate will be assembled with the 3D printed spacer to buid my rocket avionics. You will be able to choose between different altimeters. The plate can be 3D printed or cut with a CNC
Author: Boris du Reau
Date: 30/08/2018
All sizes are in mm

*/
plate_width = 55;
plate_lenght = 260;


// uncomment projection if you want to export it as an svg file and cut it with a CNC
projection(cut = true) 
difference () {
    cube ([plate_width, plate_lenght, 2]);
    
    // spacer holes
   
    spacer55mm (plate_width,15);
    
    spacer55mm (plate_width,plate_lenght - 15);
    
    // switches holes
    #translate ([15, 150, 0]) cylinder(r= 12/2, h = 5, $fn = 50 );
     #translate ([40, 150, 0]) cylinder(r= 12/2, h = 5, $fn = 50 );
    
    //alti holes
    altiDuoSmtV2(21,35);
    //altiDuo((55-27)/2,35);
    
    //wire holes
    #translate ([55/2, 100, 0])  cylinder(r= 5/2, h = 5, $fn = 50 );
    #translate ([55/2, 170, 0])  cylinder(r= 5/2, h = 5, $fn = 50 );
    
    
    //batteries holes
    #translate ([15, 200, 0])  cylinder(r= 5/2, h = 5, $fn = 50 );
    #translate ([55-15, 200, 0])  cylinder(r= 5/2, h = 5, $fn = 50 );
   
}

// Those are all the bear altimeters footprint
module altiUnoSmt(x, y) {
    //distance between holes 12mm and 42mm
      #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+12, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+42, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+12, y+42, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}

module altiUnoKitV1(x,y) {
}
module altiUnoKitV2(x,y) {
    #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+14, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+52, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+14, y+52, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}

module altiDuoSmtV1(x,y) {
     #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+13, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+52, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+13, y+52, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}

module altiDuoSmtV2(x,y) {
    #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+13, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+40, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+13, y+40, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}
module altiDuo(x,y) {
    #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+27, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+83, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+27, y+83, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}
module altiDuoMiniKitV1(x,y) {
        #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+17, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+72, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+17, y+72, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}
module altiDuoMiniKitV2(x,y) {
    #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+18, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+61, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+18, y+61, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}

module altiMulti(x,y) {
      #translate ([x, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+28, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x, y+94, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
    #translate ([x+28, y+94, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}

// spacer footprint

module spacer55mm (plateWidth, y) {
    #translate ([(plateWidth - 34)/2, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
     #translate ([plateWidth -(plateWidth - 34)/2, y, 0]) cylinder(r= 3.5/2, h = 5, $fn = 50 );
}
