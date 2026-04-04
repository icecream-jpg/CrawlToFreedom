with (obj_player) {
    if (!moving) {

    if (!place_meeting(x - dist, y, Object19)) {
    target_x = x - dist;
    target_y = y ;     
    hspeed = -move_speed;
    vspeed = 0;      
    moving = true;
	
	    move_dir_h = -1;
        move_dir_v = 0;
	}
}
}