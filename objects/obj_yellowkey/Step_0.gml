// wait for growl
var _inst = instance_nearest(x, y, obj_growl); // 
if (instance_exists(_inst)) {
    var _dist_growl = point_distance(x, y, _inst.x, _inst.y);
    if (abs(_dist_growl - _inst.radius) < _inst.growth_speed) {
        growl_timer = 120;
        growl_radius = 0; 
    }
}

// check distance to player
var _dist_to_player = point_distance(x, y, obj_player.x, obj_player.y); // 
var _fog_radius = 100; 

// visbility of sprite, how fast circle grows
if (growl_timer > 0) {
    growl_timer--;
    growl_radius += 1; //controls circle growth speed
    
    // keep sprite hidden
    image_alpha = 0; 
} 

// if player is close show sprite (within fog)
if (_dist_to_player < _fog_radius) {
    image_alpha = 1;
} else if (growl_timer <= 0) {
    // only make key invisible if timer ends
    image_alpha = 0;
    growl_radius = 0;
}


