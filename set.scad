include <config.scad>;
use <king.scad>;
use <queen.scad>;
use <pawn.scad>;

sq = 25.4;

translate([-0.5*sq,0.5*sq,0]) king();
translate([0.5*sq,0.5*sq,0]) queen();

for(x = [0:7]){
	translate([(x-3.5)*sq,-0.5*sq,0])
		pawn();
}