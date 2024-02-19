$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -47.5000000000]) {
			cylinder(h = 95, r = 6.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.2500000000);
		}
	}
}