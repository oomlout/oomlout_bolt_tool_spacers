$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -25.5000000000]) {
			cylinder(h = 51, r = 3.7500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5500000000);
		}
	}
}