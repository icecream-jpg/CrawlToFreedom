with (obj_player) {
	if(!moving){

    if (!place_meeting(x , y-dist, Object19)) {
    target_x = x;
    target_y = y - dist;      
    hspeed = 0;
    vspeed = -move_speed;      
    moving = true;
	
	    move_dir_h = 0;
        move_dir_v = -1;
}
	}
}