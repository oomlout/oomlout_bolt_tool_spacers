$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -21.0000000000]) {
			cylinder(h = 42, r = 1.8500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 0);
		}
	}
}