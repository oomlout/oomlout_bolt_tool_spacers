$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -17.5000000000]) {
			cylinder(h = 35, r = 8.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.5000000000);
		}
	}
}