$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -43.5000000000]) {
			cylinder(h = 87, r = 2.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
	}
}