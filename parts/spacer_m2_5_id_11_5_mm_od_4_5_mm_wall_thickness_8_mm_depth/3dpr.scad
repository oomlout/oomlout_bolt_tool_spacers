$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -4.0000000000]) {
			cylinder(h = 8, r = 5.7500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5500000000);
		}
	}
}