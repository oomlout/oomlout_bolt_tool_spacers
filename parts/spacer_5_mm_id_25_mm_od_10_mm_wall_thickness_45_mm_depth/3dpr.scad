$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -22.5000000000]) {
			cylinder(h = 45, r = 12.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 5);
		}
	}
}