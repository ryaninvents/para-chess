include <config.scad>;
use <piece_base.scad>;

ball_size = 0.6;
squash = 0.75;

union(){
	piece_base(pawn_height,piece_diam*ball_size*0.83);
	translate([0,0,pawn_height+squash*ball_size*base_diam*cos(30)/2])	
		scale([1,1,squash])
			sphere(r=ball_size*base_diam/2);
}