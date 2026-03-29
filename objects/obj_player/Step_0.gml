if (moving) {
   
    var old_x = x;
    var old_y = y;
    
   
    x += hspeed;
    y += vspeed;
    

    if (place_meeting(x, y, Object19)) {
   
        x = old_x;
        y = old_y;
        
        
        moving = false;
        hspeed = 0;
        vspeed = 0;
        show_debug_message("碰撞墙体，移动终止");
        exit;
    }
    
    var done = false;
    if (target_x != x) {
        // 水平移动
        if ((hspeed > 0 && x >= target_x) || (hspeed < 0 && x <= target_x)) {
            x = target_x;
            done = true;
        }
    } else if (target_y != y) {
        // 垂直移动
        if ((vspeed > 0 && y >= target_y) || (vspeed < 0 && y <= target_y)) {
            y = target_y;
            done = true;
        }
    }
    
    if (done) {
        hspeed = 0;
        vspeed = 0;
        moving = false;
    }
}

//moving animation
if moving = true {
	image_speed = 0.2;
}
else
{
	image_speed = 0;
}
	