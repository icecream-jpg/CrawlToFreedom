// draw square around panel
if (growl_timer > 0) {
    var _fade = growl_timer / 60;
    draw_set_alpha(_fade);
    
    // turns a center point and radius into a square
    var _left   = x - growl_radius;
    var _top    = y - growl_radius;
    var _right  = x + growl_radius;
    var _bottom = y + growl_radius;
    
    // draw red square, outline only
    draw_rectangle_colour(_left, _top, _right, _bottom, c_red, c_red, c_red, c_red, true);
    
    draw_set_alpha(1);
}

// draw panel sprite if player is close enough within fog
if (image_alpha > 0) {
    draw_self();
}