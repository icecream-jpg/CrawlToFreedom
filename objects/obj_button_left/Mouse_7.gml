with (obj_player) {
    if (!moving) {
		 var target_x_temp = x - dist;
    if (!collision_line(x, y, target_x_temp, y, obj_wall, false, true)) {
    target_x = x - dist;
    target_y = y ;     
    hspeed = -move_speed;
    vspeed = 0;      
    moving = true;
	}
}
}