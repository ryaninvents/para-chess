include <config.scad>;
use <piece_base.scad>;

king_height = pawn_height*2;
cross_radius = piece_diam/3.5;
crown_height = base_height*2;
peak_height = crown_height*0.3;

module king(){
	union(){
		piece_base(king_height,piece_diam*0.8);
		translate([0,0,king_height])
			cylinder(r1=piece_diam*0.4,
						r2=base_diam/2,
						h=crown_height);
		translate([0,0,king_height+crown_height]){
			cylinder(r1=base_diam/4,
						r2=piece_diam/6,
						h=peak_height);
			translate([0,0,peak_height+cross_radius*cos(30)])
				rotate([90,0,0])
					cylinder(r=cross_radius,
								h=cross_radius/2,
								center=true);
		}
	}
}
king();