$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -45.0000000000]) {
			cylinder(h = 90, r = 11.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}