// Draw the expanding ring visually
draw_set_color(c_aqua);
draw_set_alpha(image_alpha);
draw_circle(x, y, radius, true); // 'true' for outline only
draw_set_alpha(1);
draw_set_color(c_white);