$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -25.0000000000]) {
			cylinder(h = 50, r = 3.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.7500000000);
		}
	}
}