include <config.scad>;
use <king.scad>;
use <pawn.scad>;

sq = 25.4;

translate([-0.5*sq,0.5*sq,0])
king();
for(i = [0:7]){
	translate([(i-3.5)*sq,-0.5*sq,0])
		pawn();
}