$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -39.0000000000]) {
			cylinder(h = 78, r = 3.7500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 3.2500000000);
		}
	}
}