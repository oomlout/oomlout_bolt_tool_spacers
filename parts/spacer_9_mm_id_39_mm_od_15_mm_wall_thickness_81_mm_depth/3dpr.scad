$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -40.5000000000]) {
			cylinder(h = 81, r = 19.5000000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.5000000000);
		}
	}
}