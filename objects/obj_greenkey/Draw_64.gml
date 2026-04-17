// draw circle around key
if (growl_timer > 0) {
    var _echo_fade = growl_timer / 60;
    draw_set_alpha(_echo_fade);
    draw_circle_colour(x, y, growl_radius, c_lime, c_lime, true); 
    draw_set_alpha(1);
}

