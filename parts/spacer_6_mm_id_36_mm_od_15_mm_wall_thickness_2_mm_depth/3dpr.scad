$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.0000000000]) {
			cylinder(h = 2, r = 18.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 6);
		}
	}
}