$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -27.5000000000]) {
			cylinder(h = 55, r = 21.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.0000000000);
		}
	}
}