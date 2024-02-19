$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -32.5000000000]) {
			cylinder(h = 65, r = 16.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.5500000000);
		}
	}
}