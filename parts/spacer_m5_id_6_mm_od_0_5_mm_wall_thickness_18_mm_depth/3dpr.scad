$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -9.0000000000]) {
			cylinder(h = 18, r = 3.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.7500000000);
		}
	}
}