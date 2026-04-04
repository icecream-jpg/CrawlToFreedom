// draw circle around key
if (growl_timer > 0) {
    var _echo_fade = growl_timer / 60;
    draw_set_alpha(_echo_fade);
    draw_circle_colour(x, y, growl_radius, c_lime, c_lime, true); 
    draw_set_alpha(1);
}

// draw key if player is close enough within fog
var _dist_to_player = point_distance(x, y, obj_player.x, obj_player.y);
if (_dist_to_player < 200) { 
    draw_self(); 
}