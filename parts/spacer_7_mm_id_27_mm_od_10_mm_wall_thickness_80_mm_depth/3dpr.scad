$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -40.0000000000]) {
			cylinder(h = 80, r = 13.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 7);
		}
	}
}