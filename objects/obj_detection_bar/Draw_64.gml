// get screen dimensions
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// scale bar up
var _s = 4; 
// get width of bar as on screen, original width * scale
var _bar_width = sprite_get_width(spr_detection_bg) * _s;


// position, x, half the screen - half bar's width 
var _x = (_gui_w / 2) - (_bar_width / 2);

// y, height - a little, 250 pixels up from the floor 
var _y = _gui_h - 250; 

// draw white bar
draw_sprite_ext(spr_detection_bg, 0, _x, _y, _s, _s, 0, c_white, 1);

// if detection bar  > 80, sprite fill
var _fill = detection_level / max_detection;
var _color = (detection_level > 80) ? c_red : c_white;

// stack properly
draw_sprite_ext(spr_detection_fill, 0, _x, _y, _s * _fill, _s, 0, _color, 1);

