/// @description AI Behavior
// You can write your code in this editor
switch (state) {
	//follow path
    case states.waitThere:
        if(distance_to_object(obj_player) <= distanceTrigger){
            state = states.chase;
        }
    break;
	
	//Chase player
	case states.chase:
		//update path based on player
		if(mp_grid_path(global.grid, mov_path, x, y, obj_player.x, obj_player.y, 1)) {
				path_start(mov_path, spd, path_action_continue, true);
			}
			
		//Path home
		//if(distance_to_object(obj_player) > distanceTrigger){
		//	path_end();
		//	if(mp_grid_path(global.grid, home_path, x, y, go_back_area.x, go_back_area.y, 1)) {
		//		path_start(home_path, spd, path_action_continue, true);
		//	}
		//	state = states.backToPath;
		//}
		
		if(distance_to_object(obj_player) > distanceTrigger){
			path_end();
			
			state = states.waitThere;
		}
	break;
	
	//Head back home
	//case states.backToPath:
	//	//Chase player
	//	if(distance_to_object(obj_player) <= distanceTrigger){
	//		path_end();
    //        state = states.chase;
    //    }
	//	//Head back home
	//	if(distance_to_object(go_back_area) == 0){
	//		path_end();
	//		path_start(followPath,spd,path_action_reverse,true);
	//		state = states.path;
    //    }
    //break;
}