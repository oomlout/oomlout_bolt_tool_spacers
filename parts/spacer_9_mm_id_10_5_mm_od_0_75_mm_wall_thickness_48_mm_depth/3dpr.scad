$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -24.0000000000]) {
			cylinder(h = 48, r = 5.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 9);
		}
	}
}