$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -7.5000000000]) {
			cylinder(h = 15, r = 5.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 4.5000000000);
		}
	}
}