/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player) <= distanceTrigger and distance_to_object(obj_player) >= 5){
	spd = 3;
	x_dir = sign(par_wall.x - x);
	y_dir = sign(par_wall.y - y);
	if place_meeting(x+ 5 * x_dir,y,par_wall){
		x += spd * -x_dir;
	}
	if place_meeting(x,y+5 * y_dir,par_wall){
		y += spd * -y_dir;
	}
	else{
		move_towards_point(obj_player.x,obj_player.y,spd);
	}
}
else{
	spd=0;
	move_towards_point(obj_player.x,obj_player.y,spd);
}