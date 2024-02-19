$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -18.0000000000]) {
			cylinder(h = 36, r = 21.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5500000000);
		}
	}
}