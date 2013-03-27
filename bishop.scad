include <config.scad>;
use <piece_base.scad>;

bishop_height = pawn_height*1.5;
cross_radius = piece_diam/3.5;
miter_diam = piece_diam*0.8*1.4;
miter_height = base_height*3;
miter_ratio = 2;
ball_size = piece_diam/5;
cut_width = base_height*0.25;
cut_angle = 20;

miter_base_height = miter_height/(1+miter_ratio);

module bishop(){
	difference(){
		union(){
			piece_base(bishop_height,piece_diam*0.8);
			translate([0,0,bishop_height]){
				cylinder(r1 = piece_diam*0.8/2,
					r2 = miter_diam/2,
					h = miter_base_height);
				translate([0,0,miter_base_height])
					cylinder(r1=miter_diam/2,
						r2=ball_size/2,
						h = miter_height - miter_base_height);
				translate([0,0,miter_height+ball_size*cos(30)/2])
					sphere(r=ball_size);
			}
		}
		translate([0,-0.8*miter_diam/2,bishop_height+miter_height])
			rotate([cut_angle,0,0])
				cube([40,cut_width,20],center=true);
	}
}
bishop();