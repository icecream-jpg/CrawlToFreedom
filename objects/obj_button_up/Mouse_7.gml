with (obj_player) {
	if(!moving){
	var target_y_temp = y - dist
    if (!collision_line(x, y, x, target_y_temp, Object19, false, true)) {
    target_x = x;
    target_y = y - dist;      
    hspeed = 0;
    vspeed = -move_speed;      
    moving = true;
}
	}
}