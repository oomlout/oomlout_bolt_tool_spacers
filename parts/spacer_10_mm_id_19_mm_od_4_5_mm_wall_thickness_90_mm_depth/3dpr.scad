$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -45.0000000000]) {
			cylinder(h = 90, r = 9.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 5.0000000000);
		}
	}
}