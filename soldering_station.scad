button_cap();

module button_cap() {
    cylinder(r = 6.5/2, h = 7, $fn = 24, center = true);
    translate([0,0,-4]) intersection() {
        cube([6.5,20,1], center = true);
        cylinder(r = 9/2, h = 1, $fn = 24, center = true);
    }
}

module front() {
	difference() {
		difference() {
			union() {
				cube([107,62,2], center = true);
				
				translate([99/2-40,-55/2+18,-3]) union() {
					translate([75/2,31/2,0]) cylinder(r = 7/2, h = 4, $fn = 16, center = true);
					translate([75/2,-31/2,0]) cylinder(r = 7/2, h = 4, $fn = 16, center = true);
					translate([-75/2,31/2,0]) cylinder(r = 7/2, h = 4, $fn = 16, center = true);
					translate([-75/2,-31/2,0]) cylinder(r = 7/2, h = 4, $fn = 16, center = true);
				}
				
				translate([0,55/2-8,-4.5]) union() {
					translate([15.25,0,0]) cylinder(r = 6.75/2, h = 7, $fn = 16, center = true);
					translate([-15.25,0,0]) cylinder(r = 6.75/2, h = 7, $fn = 16, center = true);
				}
			}

			translate([99/2-40,-55/2+18,-6]) scale([1.015,1.03,1]) lcd();
			translate([99/2-8,55/2-8,-6.5]) rotate([0,0,90]) scale([1.025,1.025,1]) pot();
			translate([-99/2+9.5,55/2-29/2,2.5]) rotate([0,0,90]) scale([1.025,1.025,1]) din();
			translate([-99/2+9.5,-55/2+29/2,-6]) cube([8.75,14,100], center = true);
		}	
		
		translate([99/2-40,-55/2+18,-3]) union() {
			translate([75/2,31/2,0]) cylinder(r = 3/2, h = 10, $fn = 16, center = true);
			translate([75/2,-31/2,0]) cylinder(r = 3/2, h = 10, $fn = 16, center = true);
			translate([-75/2,31/2,0]) cylinder(r = 3/2, h = 10, $fn = 16, center = true);
			translate([-75/2,-31/2,0]) cylinder(r = 3/2, h = 10, $fn = 16, center = true);
		}
		
		translate([0,55/2-8,0]) union() {
			translate([8,0,0]) cylinder(r = 7.5/2, h = 20, $fn = 16, center = true);
			translate([-8,0,0]) cylinder(r = 7.5/2, h = 20, $fn = 16, center = true);
		}
		
		translate([0,55/2-8,-4.5]) union() {
			translate([15.25,0,0]) cylinder(r = 3/2, h = 20, $fn = 16, center = true);
			translate([-15.25,0,0]) cylinder(r = 3/2, h = 20, $fn = 16, center = true);
		}
		
		translate([-99/2+9.5,55/2-29/2,2.5]) rotate([0,0,90]) union() {
			translate([11.75,0,0]) cylinder(r = 3.5/2, h = 20, $fn = 16, center = true);
			translate([-11.75,0,0]) cylinder(r = 3.5/2, h = 20, $fn = 16, center = true);
		}
	}
	
	/*translate([99/2-40,-55/2+18,-6]) lcd();
	translate([99/2-8,55/2-8,-6.5]) rotate([0,0,90]) pot();
	translate([-99/2+9.5,55/2-29/2,2.5]) rotate([0,0,90]) din();
	translate([-99/2+9.5,-55/2+29/2,-6]) rotate([0,0,90]) power_switch();
	translate([0,55/2-8,-9]) button();*/
}

module button() {
	color([0,0.7,0]) difference() {
		cube([40,9.5,2], center = true);
		
		translate([15.25,0,0]) cylinder(r = 3.5/2, h = 10, $fn = 16, center = true);
		translate([-15.25,0,0]) cylinder(r = 3.5/2, h = 10, $fn = 16, center = true);
	}
	
	color([0.2,0.2,0.2]) translate([8,0,3.75]) cylinder(r = 6.5/2, h = 5.5, $fn = 16, center = true);
	color([0.2,0.2,0.2]) translate([-8,0,3.75]) cylinder(r = 6.5/2, h = 5.5, $fn = 16, center = true);
}

module back() {
	difference() {
		cube([107,62,2], center = true);

		//hex grid
		translate([-54,-7.5,-2]) union() {
			intersection() {
				union() {
					translate([8,10,0]) for (j = [0 : 6]) {
						for (i = [0 : 3]) {
							translate([14.9*j,9*i,-1]) cylinder(r=4, h=5, $fn=6);
						}
					}
					
					translate([15.4,5.7,0]) for (j = [0 : 6]) {
						for (i = [0 : 3]) {
							translate([14.9*j,9*i,-1]) cylinder(r=4, h=5, $fn=6);
						}
					}
				}
				
				translate([9,6,0]) cube([90,25,20]);
			}
		}
		
		translate([-36,-13.5,0]) cube([12,15,5], center = true);
	}
}

module top() {
	difference() {
		translate([0,-39,0]) difference() {
			cube([110,85,65], center = true);
			difference() {
				cube([103,100,58], center = true);
				translate([0,20,0]) cylinder(r = 4, h = 100, $fn = 24, center = true);
			}
			translate([0,0,50]) cube([120,100,65], center = true);
			
			translate([0,20,35]) cylinder(r = 2.8/2, h = 70, $fn = 24, center = true);
		}
		
		cube([108,2.5,63], center = true);
		translate([0,-78,0]) cube([108,2.5,63], center = true);
		
		translate([75,-9,-50]) cube([70,3,60], center = true);
		translate([75,-29,-50]) cube([70,3,60], center = true);
		translate([75,-49,-50]) cube([70,3,60], center = true);
		translate([75,-69,-50]) cube([70,3,60], center = true);
		
		translate([-75,-9,-50]) cube([70,3,60], center = true);
		translate([-75,-29,-50]) cube([70,3,60], center = true);
		translate([-75,-49,-50]) cube([70,3,60], center = true);
		translate([-75,-69,-50]) cube([70,3,60], center = true);
		
		translate([0,-40,-10]) rotate([0,90,0]) cylinder(r = 5/2, h = 150, $fn = 16, center = true);
	}


	difference() {
		translate([-53.25,-39,17]) cube([7,70,7], center = true);
		translate([-30.5,-39,0]) rotate([0,30,0]) cube([50,75,50], center = true);
		translate([-76,-39,0]) rotate([0,-30,0]) cube([50,75,50], center = true);
		translate([-53.25,-39,21]) cube([4,72,7], center = true);
	}

	difference() {
		translate([53.25,-39,17]) cube([7,70,7], center = true);
		translate([30.5,-39,0]) rotate([0,-30,0]) cube([50,75,50], center = true);
		translate([76,-39,0]) rotate([0,30,0]) cube([50,75,50], center = true);
		translate([53.25,-39,21]) cube([4,72,7], center = true);
	}
}

module bottom() {
	translate([0,-51,-25]) difference() {
		union() {
			translate([47,22,0]) cylinder(r = 7/2, h = 8, $fn = 12, center = true);
			translate([47,-22,0]) cylinder(r = 7/2, h = 8, $fn = 12, center = true);
			translate([-47,22,0]) cylinder(r = 7/2, h = 8, $fn = 12, center = true);
			translate([-47,-22,0]) cylinder(r = 7/2, h = 8, $fn = 12, center = true);
		}
		
		translate([47,22,0]) cylinder(r = 3/2, h = 15, $fn = 12, center = true);
		translate([47,-22,0]) cylinder(r = 3/2, h = 15, $fn = 12, center = true);
		translate([-47,22,0]) cylinder(r = 3/2, h = 15, $fn = 12, center = true);
		translate([-47,-22,0]) cylinder(r = 3/2, h = 15, $fn = 12, center = true);
	}

	difference() {
		translate([0,-39,0]) difference() {
			cube([110,85,65], center = true);
			difference() {
				cube([103,100,58], center = true);
				translate([0,20,0]) cylinder(r = 4, h = 100, $fn = 24, center = true);
			}
			translate([0,0,15]) cube([120,100,65], center = true);
			
			translate([0,20,6.8]) cylinder(r = 3.5/2, h = 70, $fn = 24, center = true);
			translate([0,20,-31]) cylinder(r = 6.5/2, h = 5, $fn = 24, center = true);
		}
		
		cube([108,2.5,63], center = true);
		translate([0,-78,0]) cube([108,2.5,63], center = true);
		
		translate([0,-9,0]) cube([70,3,100], center = true);
		translate([0,-29,0]) cube([70,3,100], center = true);
		translate([0,-49,0]) cube([70,3,100], center = true);
		translate([0,-69,0]) cube([70,3,100], center = true);
	}
}

module lcd() {
	difference() {
		union() {
			color([0,0.7,0]) cube([80,36,2], center = true);
			color([0.15,0.15,0.15]) translate([0,0.75,4.5]) cube([71,24.5,7], center = true);
			color([0.7,0.7,0.7]) translate([-37.5,0,2.5]) cube([5,15,3], center = true);
			color([0.15,0.15,0.15]) translate([12.5,-16.5,2]) cube([40,3,2], center = true);
		}
		
		translate([75/2,31/2,0]) cylinder(r = 3.5/2, h = 5, $fn = 16, center = true);
		translate([75/2,-31/2,0]) cylinder(r = 3.5/2, h = 5, $fn = 16, center = true);
		translate([-75/2,31/2,0]) cylinder(r = 3.5/2, h = 5, $fn = 16, center = true);
		translate([-75/2,-31/2,0]) cylinder(r = 3.5/2, h = 5, $fn = 16, center = true);
	}
}

module pot() {
	union() {
		color([0.8,0.8,0.8]) cylinder(r = 16.25/2, h = 9.5, $fn = 32, center = true);
		color([0.7,0.4,0]) hull() {
			translate([0,0,1.75]) cylinder(r = 16.5/2, h = 2, $fn = 32, center = true);
			translate([0,11.25,1.75]) cube([16.5,1,2], center = true);
		}
		color([0.6,0.6,0.6]) translate([0,0,12.25]) cylinder(r = 7.5/2, h = 15, $fn = 16, center = true);
		color([0.8,0.8,0.8]) translate([0,14.25,1.75]) cube([3.5,5,2], center = true);
		color([0.8,0.8,0.8]) translate([6.5,14.25,1.75]) cube([3.5,5,2], center = true);
		color([0.8,0.8,0.8]) translate([-6.5,14.25,1.75]) cube([3.5,5,2], center = true);
	}
}

module power_switch() {
	color([0,0.5,0.7]) cube([13,8,9.5], center = true);
	color([0.6,0.6,0.6]) translate([0,0,9]) cylinder(r = 6/2, h = 8.5, $fn = 16, center = true);
	color([0.6,0.6,0.6]) translate([2,0,17]) rotate([0,22.5,0]) cylinder(r = 2.5/2, h = 10, $fn = 16, center = true);
	color([0.6,0.6,0.6]) translate([0,0,-6.5]) cube([1,2,3.5], center = true);
	color([0.6,0.6,0.6]) translate([4.5,0,-6.5]) cube([1,2,3.5], center = true);
}

module din() {
	difference() {
		union() {
			color([0.6,0.6,0.6]) hull() {
				cylinder(r = 19/2, h = 2, $fn = 32, center = true);
				translate([11.75,0,0]) cylinder(r = 5/2, h = 2, $fn = 16, center = true);
				translate([-11.75,0,0]) cylinder(r = 5/2, h = 2, $fn = 16, center = true);
			}
			color([0.6,0.6,0.6]) translate([0,0,-6.5]) cylinder(r = 15/2, h = 11, $fn = 32, center = true);
		}
		
		translate([11.75,0,0]) cylinder(r = 3.5/2, h = 5, $fn = 16, center = true);
		translate([-11.75,0,0]) cylinder(r = 3.5/2, h = 5, $fn = 16, center = true);
	}
}