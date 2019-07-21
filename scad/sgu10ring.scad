// Adapter to allow standard 50mm GU10 lamps to fit into a 64mm SGU10 lamp holder
//
// - Robert McKay 2019
//

d_lip=55;  // inner lip diameter (slightly larger than bulb size of 50mm)
h_lip=1.5;   // lip height

d_ext=64; // base outter diameter
h_ext=3; //  base outter height
edge=2;   // height of outter wedge edge

d_hole=48; // size of hole under lamp (slightly smaller than 50mm)
d_lamp=50; // size of lamp 50mm

translate([0, 0, 0])
    rotate_extrude($fn = 180)
        polygon( points=[[d_hole/2,0],[d_ext/2-edge,0],[d_ext/2,edge],[d_ext/2,h_ext],[d_lip/2,h_ext],[d_lip/2,h_ext],[d_lip/2,h_ext+h_lip],[d_lip/2,h_ext+2*h_lip],[d_lip/2,h_ext+3*h_lip],[(d_lip+d_lamp)/4,h_ext+3*h_lip],[d_lamp/2,h_ext],[d_hole/2,h_ext]] );
    
