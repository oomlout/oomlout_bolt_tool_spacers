$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -30.0000000000]) {
			cylinder(h = 60, r = 2.2500000000);
		}
	}
	union() {
		#translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 1.8000000000);
		}
	}
}