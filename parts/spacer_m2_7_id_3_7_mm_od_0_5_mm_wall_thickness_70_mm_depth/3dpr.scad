$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -35.0000000000]) {
			cylinder(h = 70, r = 1.8500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 0);
		}
	}
}