$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -45.0000000000]) {
			cylinder(h = 90, r = 3.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5500000000);
		}
	}
}