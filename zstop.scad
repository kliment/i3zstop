translate([10,35,-20])rotate([-90,0,0])mirror([0,1,0])difference(){
cube([28,10,30],true);
translate([0,1.51,9.65])cube([20,9,10.8],true);
translate([0,1.51,4.65])cube([19,9,10.8],true);
translate([0,1.51,.65])cube([6,9,40.8],true);
translate([8.5,0,-14])cylinder(r=2.5,h=3,center=true,$fn=30);
translate([-8.5,0,-14])cylinder(r=2.5,h=3,center=true,$fn=30);
}

module m4nynut(){
cylinder(r=8.5/2,h=5.2,$fn=6,center=true);
}
module 4mbevel(){
cylinder(r1=8/2,r2=4.2/2,h=3.5,center=true);
cylinder(r=4.2/2,h=20);
}

difference(){
union(){
cube([42,24,50],true);
translate([-19,0,0])cube([8,50,50],true);
}
translate([0,0,9])cube([28.8,10.8,50],true);
translate([0,5,-1])cube([6.8,20.8,53],true);
translate([8.5,0,-18.5]){rotate([0,0,30])m4nynut();cylinder(r=2.5,h=15,center=true,$fn=30);}
translate([-8.5,0,-18.5]){rotate([0,0,30])m4nynut();cylinder(r=2.5,h=15,center=true,$fn=30);}
translate([16.7,0,8])rotate([0,90,0])rotate([0,0,30]){m4nynut();cylinder(r=2.5,h=15,center=true,$fn=30);}
translate([8.5,7.98,8])rotate([90,0,0]){m4nynut();cylinder(r=2.5,h=15,center=true,$fn=30);}
translate([-8.5,7.98,8])rotate([90,0,0]){m4nynut();cylinder(r=2.5,h=15,center=true,$fn=30);}
translate([-16,19,-20])rotate([0,-90,0])4mbevel();
translate([-16,19,0])rotate([0,-90,0])4mbevel();
translate([-16,19,20])rotate([0,-90,0])4mbevel();
translate([-16,-19,-20])rotate([0,-90,0])4mbevel();
translate([-16,-19,0])rotate([0,-90,0])4mbevel();
translate([-16,-19,20])rotate([0,-90,0])4mbevel();

}