// Draw semi-transparent background (optional)
draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(inventory_x - 5, inventory_y - 5,
               inventory_x + array_length(keys_collected) * icon_spacing + 5,
               inventory_y + sprite_get_height(spr_key_red) + 5, false);
draw_set_alpha(1);

// Iterate through collected keys array
for (var i = 0; i < array_length(keys_collected); i++) {
    var key_type = keys_collected[i];
    var spr = ds_map_find_value(key_sprite_map, key_type);
    if (spr != undefined) {
        var xx = inventory_x + i * icon_spacing;
        var yy = inventory_y;
        draw_sprite(spr, 0, xx, yy);
    }
}