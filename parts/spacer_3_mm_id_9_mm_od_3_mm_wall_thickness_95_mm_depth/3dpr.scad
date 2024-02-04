$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -47.5000000000]) {
			cylinder(h = 95, r = 2.5000000000);
		}
	}
	union() {
		#translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}