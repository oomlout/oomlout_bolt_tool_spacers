$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -10.0000000000]) {
			cylinder(h = 20, r = 17.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.7500000000);
		}
	}
}