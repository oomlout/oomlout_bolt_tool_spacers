$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -25.0000000000]) {
			cylinder(h = 50, r = 11.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.0000000000);
		}
	}
}