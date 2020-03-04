if(key_picked_up){
	angle = point_direction(x,y,obj_player.x,obj_player.y);
	if(angle < 270 and angle > 90){
		sprite_index = spr_enemy_flipped;
	}
	else{
		sprite_index = spr_enemy;
	}
	
	image_angle = angle;
	
}