
var _w = window_get_width();
var _h = window_get_height();


if (!surface_exists(surface_fog) || surface_get_width(surface_fog) != _w || surface_get_height(surface_fog) != _h) {
    if (surface_exists(surface_fog)) surface_free(surface_fog);
    surface_fog = surface_create(_w, _h);
}


surface_set_target(surface_fog);


draw_clear_alpha(c_black, 1);


gpu_set_blendmode_ext_sepalpha(bm_zero, bm_one, bm_zero, bm_zero);

//change the number at the middle to change the radius of the vision
draw_circle_color(obj_player.x, obj_player.y, 150, c_white, c_white, false);


gpu_set_blendmode(bm_normal);


surface_reset_target();


draw_surface(surface_fog, 0, 0);