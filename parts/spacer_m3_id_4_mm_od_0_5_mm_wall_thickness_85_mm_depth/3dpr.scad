$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -42.5000000000]) {
			cylinder(h = 85, r = 2.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}