$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -13.5000000000]) {
			cylinder(h = 27, r = 3.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.5000000000);
		}
	}
}