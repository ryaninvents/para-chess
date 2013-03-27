include <config.scad>;

module piece_base(height,top_diam){
	union(){
		translate([0,0,base_height+(base_diam-piece_diam)/2])
		cylinder(r1=piece_diam/2,r2=top_diam/2,h=height-base_height-(base_diam-piece_diam)/2);
		cylinder(r=base_diam/2,h=base_height);
		translate([0,0,base_height])
			cylinder(r1=base_diam/2,
						r2=piece_diam/2,
						h=(base_diam-piece_diam)/2);
	}
}

piece_base(pawn_height,piece_diam*0.6);