wallwidth=1;
overlap=0.01;

module shade() {
	translate([0, 0, 2]) difference() {
		cylinder(center=true,r=3.6,h=4);
		translate([0, 0, 2.05]) rotate([15, 0, 0]) cube(center=true, [20, 20, 4]);
	}
}

module chamber() {
	rotate(a=[90, 0, 0]) cylinder(center=true, r=2.6, h=30);
}

module three_shades(size, delta) {
	translate([0, overlap-size/2, delta]) rotate([90, 0, 0]) shade();
	translate([0, overlap-size/2, 0]) rotate([90, 0, 0]) shade();
	translate([0, overlap-size/2, -delta]) rotate([90, 0, 0]) shade();
}

module corpse(size, height) {
	delta=(height-2*wallwidth)/3;
	difference() {
		union() {
			cube(center=true,[size, size, height]);
			three_shades(size, delta);
		}
		translate([0, 0, delta]) chamber();
		chamber();
		translate([0, 0, -delta]) chamber();
	}
	translate([0, 0, -.75*height]) cylinder(r=size/4, h=height/2, center=true, $fn=20);
	translate([0, 0, -height]) cylinder(r=size, h=2, center=true, $fn=20);
}

corpse(9, 24);
*chamber();
*shade();
*three_shades();
