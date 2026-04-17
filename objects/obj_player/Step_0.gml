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
       
        exit;
    }
    
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

//move player to win screen when objectives completed
// check if all are gone from Level1 Room
var keys_collected = (instance_number(obj_greenkey) == 0 && 
                      instance_number(obj_redkey) == 0 && 
                      instance_number(obj_yellowkey) == 0);

var panels_cleared = (instance_number(obj_greenpanel) == 0 && 
                      instance_number(obj_redpanel) == 0 && 
                      instance_number(obj_yellowpanel) == 0);

// if conditions met move to win screen room
if (keys_collected && panels_cleared) {
    room_goto(WinScreen); 
}