/* File: Challenge-4.k
 ---------------------------
Generalize the program you wrote in Challenge 3 so that Karel
is able to climb a stair-step mountain of any height and place
a flag on its top.

Thus, in addition to climbing the mountain in that exercise,
it should be able to scale a molehill or Mount Everest.
*/
import "turns";

function stepUp(){
	while(frontIsBlocked()){
		turnLeft();
		move();
		turnRight();
		move();
	}
}

function stepDown(){
	while(rightIsClear()){
		turnRight();
		move();
		turnLeft();
		if(frontIsClear()){
		move();
			}else{
			stepUp();
				}
		}
}

function climbMountain(){
	while(frontIsBlocked()){
		stepUp();
	}
	while(frontIsClear()){
		putBeeper();
		move();
		stepDown();
		}
}

function moveToWall(){
	while(frontIsClear()){
		move();
	}
}


function Solve(){
	moveToWall();
	climbMountain();
	climbMountain();
}
