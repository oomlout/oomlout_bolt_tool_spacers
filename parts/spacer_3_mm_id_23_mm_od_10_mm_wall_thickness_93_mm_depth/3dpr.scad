$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -46.5000000000]) {
			cylinder(h = 93, r = 11.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5000000000);
		}
	}
}