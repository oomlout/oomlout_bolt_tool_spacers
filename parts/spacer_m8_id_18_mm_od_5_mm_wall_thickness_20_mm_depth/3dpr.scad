$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -10.0000000000]) {
			cylinder(h = 20, r = 9.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.2500000000);
		}
	}
}