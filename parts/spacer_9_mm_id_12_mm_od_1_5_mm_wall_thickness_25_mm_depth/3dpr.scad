$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -12.5000000000]) {
			cylinder(h = 25, r = 6.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.5000000000);
		}
	}
}