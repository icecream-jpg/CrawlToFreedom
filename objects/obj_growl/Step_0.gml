radius += growth_speed;

// fade the visual ring as it expands
image_alpha = 1 - (radius / max_radius);

// check for objects
var _targets = [obj_enemy1, obj_redkey, obj_greenkey, obj_yellowkey, obj_redpanel, obj_greenpanel, obj_yellowpanel];

for (var i = 0; i < array_length(_targets); i++) {
    // find all instanced of this object
    with (_targets[i]) {
        var _dist = point_distance(other.x, other.y, x, y);
        
        // if the growl is passing over this object
        if (abs(_dist - other.radius) < other.growth_speed) {
            growl_active = true;
<<<<<<< HEAD
            growl_timer = 120; // Stay visible for 2 seconds (60fps * 2)
=======
            growl_timer = 120; 
>>>>>>> parent of 8bfa856 (Revert "Merge branch 'main' of https://github.com/icecream-jpg/CrawlToFreedom")
        }
    }
}

// destroy when max radius is reached
if (radius >= max_radius) {
    instance_destroy();
}