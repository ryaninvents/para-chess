include <config.scad>;
use <piece_base.scad>;

tower_height = pawn_height*1.55;

module rook(){
	difference(){
		union(){
			piece_base(tower_height,piece_diam);
			translate([0,0,tower_height])
			rotate([180,0,0])
			piece_base(tower_height,piece_diam);
		}
		translate([0,0,tower_height-base_height])
			cylinder(r1=base_diam/4,r2=base_diam/2,h=base_height+0.01);
	}
}
rook();