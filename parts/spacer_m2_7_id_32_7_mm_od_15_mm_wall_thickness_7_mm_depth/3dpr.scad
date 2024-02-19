$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -3.5000000000]) {
			cylinder(h = 7, r = 16.3500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 0);
		}
	}
}