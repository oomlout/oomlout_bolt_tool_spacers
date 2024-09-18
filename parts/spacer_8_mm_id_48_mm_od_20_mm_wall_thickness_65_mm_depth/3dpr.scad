$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -32.5000000000]) {
			cylinder(h = 65, r = 24.0000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.0000000000);
		}
	}
}