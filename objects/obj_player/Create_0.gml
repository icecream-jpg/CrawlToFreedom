moving = false;          // check if move
target_x = 0;            
target_y = 0;            
move_speed = 64 / 20;  // distance/time
dist = 64;              // distance
keys_collected = [];
audio_listener_orientation(0, 0, 1, 0, -1, 0);

move_dir_h = 0;   
move_dir_v = 0;   

// Map key type to corresponding sprite (adjust sprite names as needed)
key_sprite_map = ds_map_create();
ds_map_add(key_sprite_map, "red", spr_key_red);
ds_map_add(key_sprite_map, "green", spr_key_green);
ds_map_add(key_sprite_map, "yellow", spr_key_yellow);


// Inventory display parameters
inventory_x = 100;
inventory_y = 800;
icon_spacing = 32;