$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -49.5000000000]) {
			cylinder(h = 99, r = 3.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.3500000000);
		}
	}
}