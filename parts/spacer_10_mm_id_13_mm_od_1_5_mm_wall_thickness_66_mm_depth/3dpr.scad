$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -33.0000000000]) {
			cylinder(h = 66, r = 6.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 5.0000000000);
		}
	}
}