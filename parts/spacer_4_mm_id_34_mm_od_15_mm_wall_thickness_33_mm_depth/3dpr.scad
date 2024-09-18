$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -16.5000000000]) {
			cylinder(h = 33, r = 17.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.0000000000);
		}
	}
}