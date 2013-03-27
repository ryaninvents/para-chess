include <config.scad>;
use <piece_base.scad>;

knight_height = pawn_height*1.5;
head_width = piece_diam*0.8;
head_rotate = 43;

module knight(){
	difference(){
		union(){
			piece_base(knight_height,piece_diam*0.8);
			translate([0,0,knight_height]){
				cylinder(r1 = piece_diam*0.8/2,
					r2 = 0,
					h = piece_diam*0.4);
				rotate([head_rotate,0,0])
				translate([0,-head_width*0.6,-head_width/8])
				union(){
				cube([head_width*0.7,head_width*2,head_width],center=true);
				translate([0,-head_width,0])
				scale([1,2,1])
					cylinder(r=head_width*0.7/2,h=head_width,center=true);
				}
			}
		}
		for(i=[-1,1]){
				rotate([head_rotate,0,0])
				translate([i*(head_width*0.7/2+head_width*0.8),head_width*3,0])
				translate([0,-head_width*0.6,-head_width/8])
				rotate([0,0,22.5])
				cylinder(r=head_width,h=50,$fn=8);
		}
		rotate([head_rotate/2,0,0])
		translate([0,0,knight_height*1.4])
		cube(knight_height,center=true);
	}
}
knight();