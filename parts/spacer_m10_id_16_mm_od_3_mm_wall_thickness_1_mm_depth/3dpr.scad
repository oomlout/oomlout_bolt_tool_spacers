$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -0.5000000000]) {
			cylinder(h = 1, r = 8.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 5.2500000000);
		}
	}
}