$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -42.0000000000]) {
			cylinder(h = 84, r = 4.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 3.0000000000);
		}
	}
}