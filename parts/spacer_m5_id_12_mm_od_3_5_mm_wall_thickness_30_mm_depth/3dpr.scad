$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -15.0000000000]) {
			cylinder(h = 30, r = 6.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.7500000000);
		}
	}
}