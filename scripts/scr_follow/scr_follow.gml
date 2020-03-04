obj = argument0;

if (instance_exists(obj)) {
	
	x_dir = sign(obj.x - x);
	y_dir = sign(obj.y - y);
	
	if place_meeting(x + spd * x_dir,y,obj) { //If colliding with a wall
		while !place_meeting(x+x_dir,y,obj) x+=x_dir
		x_dir = 0;
	}
	
	if place_meeting(x,y + spd * y_dir,obj) { //If colliding with a wall
		while !place_meeting(x,y + y_dir,obj) y+=y_dir
		y_dir = 0;
	}
	
	x += spd * x_dir;
	y += spd * y_dir;
	
}