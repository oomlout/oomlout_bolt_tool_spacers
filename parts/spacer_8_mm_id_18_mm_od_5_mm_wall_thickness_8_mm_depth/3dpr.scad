$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -4.0000000000]) {
			cylinder(h = 8, r = 9.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 8);
		}
	}
}