$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -32.5000000000]) {
			cylinder(h = 65, r = 17.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 2.5000000000);
		}
	}
}