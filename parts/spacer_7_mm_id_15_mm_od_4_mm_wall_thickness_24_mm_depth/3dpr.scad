$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -12.0000000000]) {
			cylinder(h = 24, r = 7.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 3.5000000000);
		}
	}
}