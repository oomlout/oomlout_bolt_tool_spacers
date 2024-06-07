$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -2.5000000000]) {
			cylinder(h = 5, r = 3.7500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 6);
		}
	}
}