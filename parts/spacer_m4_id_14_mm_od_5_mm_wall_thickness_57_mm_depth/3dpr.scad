$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -28.5000000000]) {
			cylinder(h = 57, r = 7.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.2500000000);
		}
	}
}