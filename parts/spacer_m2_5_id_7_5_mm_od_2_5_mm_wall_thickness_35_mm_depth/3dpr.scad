$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -17.5000000000]) {
			cylinder(h = 35, r = 3.7500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5500000000);
		}
	}
}