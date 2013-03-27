include <config.scad>;

king_height = pawn_height*3-base_height;
cross_radius = piece_diam/3;

union(){
	cylinder(r=piece_diam/2,h=king_height);
	cylinder(r=base_diam/2,h=base_height);
	translate([0,0,base_height])
		cylinder(r1=base_diam/2,
					r2=piece_diam/2,
					h=(base_diam-piece_diam)/2);
	translate([0,0,king_height])
		cylinder(r1=piece_diam/2,
					r2=base_diam/2,
					h=base_height);
	translate([0,0,king_height+base_height]){
		cylinder(r1=base_diam/4,
					r2=piece_diam/6,
					h=base_height/2);
		translate([0,0,base_height/2+cross_radius*cos(30)])
			rotate([90,0,0])
				cylinder(r=cross_radius,
							h=piece_diam/4,
							center=true);
	}
}