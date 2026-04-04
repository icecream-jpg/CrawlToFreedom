// position, center top
var _x = display_get_gui_width() / 2;
var _y = 60;

var _s = 4; //scale bar up

// background bar
draw_sprite_ext(spr_detection_bg, 0, _x, _y, _s, _s, 0, c_white, 1);

// fill bar
var _fill = detection_level / max_detection;
var _color = (detection_level > 80) ? c_red : c_white;

// scale fill bar
draw_sprite_ext(spr_detection_fill, 0, _x, _y, _s * _fill, _s, 0, _color, 1);

