if (moving) {
    
    var done = false;
    if (target_x != x) {
   
        if ((hspeed > 0 && x >= target_x) || (hspeed < 0 && x <= target_x)) {
            x = target_x;
            done = true;
        }
    } else if (target_y != y) {
   
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

//growl
// check for a key press, spacebar
if (keyboard_check_pressed(vk_space)) {
    // create pulse at player position
    instance_create_layer(x, y, "Instances", obj_growl);
    
    // play sound
    if (audio_exists(growl_with_echo_1_)) {
        audio_play_sound(growl_with_echo_1_, 1, false);
    }
}
	