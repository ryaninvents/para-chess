include <config.scad>;
use <piece_base.scad>;

knight_height = pawn_height*1.5;
head_width = piece_diam;
head_rotate = 60;

module knight(){
	union(){
		piece_base(knight_height,piece_diam*0.7);
		translate([0,0,knight_height]){
			rotate([head_rotate,0,0])
			translate([0,-head_width*0.6,-head_width/8])
			intersection(){
				union(){
					translate([0,-head_width*0.2,0])
					scale([1,2,1])
					rotate([0,0,0])
						sphere(r=head_width*0.7,h=head_width,center=true);
					/*rotate([90,0,0])
						cylinder(r1=head_width*0.7,
							r2=head_width*0.7,h=head_width/2);
					translate([0,-head_width/2,0])
						scale([1,1,1])
							sphere(r=head_width*0.7);*/
				}
				rotate([90,0,0])
					scale([1,0.7,1])
					cylinder(r1=head_width,
						r2=head_width*0.3,h=3*head_width,center=true);
			}
		}
	}
}
knight();