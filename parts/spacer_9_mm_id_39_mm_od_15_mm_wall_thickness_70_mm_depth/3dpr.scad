$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -35.0000000000]) {
			cylinder(h = 70, r = 19.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 9);
		}
	}
}