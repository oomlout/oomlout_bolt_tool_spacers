$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -21.0000000000]) {
			cylinder(h = 42, r = 5.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.2500000000);
		}
	}
}