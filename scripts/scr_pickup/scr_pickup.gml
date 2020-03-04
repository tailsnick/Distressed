inst_pickup = instance_place(x+spd*x_dir,y+spd*y_dir,par_pickup) 
if inst_pickup != noone {
	key = true;
	if object_exists(obj_enemy_stay){
		obj_enemy_stay.key_picked_up = true;
	}
	with (inst_pickup) instance_destroy();		
}