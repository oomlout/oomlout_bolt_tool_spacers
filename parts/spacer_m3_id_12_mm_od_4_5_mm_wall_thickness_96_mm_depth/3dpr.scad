$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -48.0000000000]) {
			cylinder(h = 96, r = 6.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}