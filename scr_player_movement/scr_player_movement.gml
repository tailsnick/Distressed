// Horizontal movement with collision
x_dir = right - left;

//Physic movement
//if x_dir != 0 { //Apply accel to speed us up
//	x_spd += accel * x_dir;
//	if abs(x_spd) > max_spd {
//		x_spd = sign(x_spd) * max_spd;
//	}
//}
//else { //Apply drag to stop us
//	if abs(x_spd) > drag x_spd -= sign(x_spd) * drag;
//	else x_spd = 0;
//}

//Collision
if place_meeting(x + spd * x_dir,y,par_wall) { //If colliding with a wall
	while !place_meeting(x+x_dir,y,par_wall) x+=x_dir
	x_dir = 0;
}
x += spd * x_dir;

// Vertical movement with collision
y_dir = down - up;

//Physic movement
//if y_dir != 0 { //Apply accel to speed us up
//	y_spd += accel * y_dir;
//	if abs(y_spd) > max_spd {
//		y_spd = sign(y_spd) * max_spd;
//	}
//}
//else { //Apply drag to stop us
//	if abs(y_spd) > drag y_spd -= sign(y_spd) * drag;
//	else y_spd = 0;
//}

//Collision
if place_meeting(x,y + spd * y_dir,par_wall) { //If colliding with a wall
	while !place_meeting(x,y + y_dir,par_wall) y+=y_dir
	y_dir = 0;
}
y += spd * y_dir;

