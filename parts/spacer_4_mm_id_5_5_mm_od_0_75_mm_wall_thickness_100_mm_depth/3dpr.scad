$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -50.0000000000]) {
			cylinder(h = 100, r = 2.7500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4);
		}
	}
}