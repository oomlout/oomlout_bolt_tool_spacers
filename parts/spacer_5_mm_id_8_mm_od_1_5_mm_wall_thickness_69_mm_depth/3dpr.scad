$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -34.5000000000]) {
			cylinder(h = 69, r = 4.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.5000000000);
		}
	}
}