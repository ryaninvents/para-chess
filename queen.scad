include <config.scad>;
use <piece_base.scad>;

queen_height = pawn_height*2.3;
crown_height = base_height*2;
crown_dent = crown_height*0.2;
peak_height = crown_height*0.4;

module queen(){
	union(){
		piece_base(queen_height,piece_diam*0.8);
		translate([0,0,queen_height]){
			difference(){
				cylinder(r1=piece_diam*0.4,
					r2=base_diam/2,
					h=crown_height);
				translate([0,0,(crown_height-crown_dent)+0.01])
					cylinder(r1=base_diam/4,
						r2=base_diam/2,
						h=crown_dent);
			}
			translate([0,0,crown_height-crown_dent]){
				cylinder(r1=base_diam/4,
							r2=piece_diam/6,
							h=peak_height);
			}
		}
	}
}
queen();