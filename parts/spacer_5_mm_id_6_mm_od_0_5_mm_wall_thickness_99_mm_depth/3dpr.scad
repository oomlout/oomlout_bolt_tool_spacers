$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -49.5000000000]) {
			cylinder(h = 99, r = 3.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.5000000000);
		}
	}
}