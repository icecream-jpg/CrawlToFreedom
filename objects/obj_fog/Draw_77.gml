
var cam = view_camera[view_index];
var view_x = camera_get_view_x(cam);
var view_y = camera_get_view_y(cam);
var view_w = camera_get_view_width(cam);
var view_h = camera_get_view_height(cam);


if (!surface_exists(surface_fog) || surface_get_width(surface_fog) != view_w || surface_get_height(surface_fog) != view_h) {
    if (surface_exists(surface_fog)) surface_free(surface_fog);
    surface_fog = surface_create(view_w, view_h);
}


surface_set_target(surface_fog);


draw_clear_alpha(c_black, 1);


var player_world_x = obj_player.x;
var player_world_y = obj_player.y;
var player_screen_x = player_world_x - view_x;
var player_screen_y = player_world_y - view_y;
var radius = 250;  //set vision radius here


gpu_set_blendmode_ext(bm_zero, bm_zero);


draw_circle_color(player_screen_x, player_screen_y, radius, c_white, c_white, false);


gpu_set_blendmode(bm_normal);


surface_reset_target();


draw_surface(surface_fog, view_x, view_y);