$fn = 50;


difference() {
	union() {
		translate(v = [0, 0, -37.5000000000]) {
			cylinder(h = 75, r = 3.2500000000);
		}
	}
	union() {
		translate(v = [0, 0, -100.0000000000]) {
			cylinder(h = 200, r = 5);
		}
	}
}