$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -48.0000000000]) {
			cylinder(h = 96, r = 3.8500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 0);
		}
	}
}