//No movement
if(up == false and down == false and right == false and left == false) {
	//standing animation 
}




// Horizontal movement with collision
x_dir = right - left;



//Collision
if place_meeting(x + spd * x_dir,y,par_wall) { //If colliding with a wall
	while !place_meeting(x+x_dir,y,par_wall) x+=x_dir
	x_dir = 0;
}
else {
	if (right == true and left == false) {
		//Right facing animation
	}
	else if (right == false and left == true) {
		//Left facing animation
	}
	x += spd * x_dir;
}





// Vertical movement with collision
y_dir = down - up;


//Collision
if place_meeting(x,y + spd * y_dir,par_wall) { //If colliding with a wall
	while !place_meeting(x,y + y_dir,par_wall) y+=y_dir
	y_dir = 0;
}
else {
	if (up == true and down == false) {
		//Up facing animation
	}
	else if (up == false and down == true) {
		//Down facing animation
	}
	y += spd * y_dir;
}

