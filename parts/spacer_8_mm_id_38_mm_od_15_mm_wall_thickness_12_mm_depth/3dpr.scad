$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -6.0000000000]) {
			cylinder(h = 12, r = 19.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.0000000000);
		}
	}
}