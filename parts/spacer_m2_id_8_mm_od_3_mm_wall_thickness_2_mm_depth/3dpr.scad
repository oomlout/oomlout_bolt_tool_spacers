$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -1.0000000000]) {
			cylinder(h = 2, r = 2.0000000000);
		}
	}
	union() {
		#translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}