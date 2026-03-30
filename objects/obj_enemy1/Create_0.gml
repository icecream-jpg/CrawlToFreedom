emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 75, 200, 1.5);
audio_play_sound_on(emitter, enemy_mumble_2_, true, 1, 0.25);


patrol_points = [
    [x, y],
    [x, y - 4 * 64],  
    [x + 4 * 64, y - 4 * 64], 
    [x + 4 * 64, y],   
    [x, y]             
];

patrol_index = 0;
speed_patrol = 2;
// state
state = "patrol";

// chasing
target = noone;
detect_range = 150;
chase_timer = 0;
chase_max = room_speed * 1; //chasing for 1 seconds

mp_potential_settings(30, 10, 12, 4);

//chasing2
cell_size = 32;

grid = mp_grid_create(
    0, 0,
    room_width div cell_size,
    room_height div cell_size,
    cell_size, cell_size
);
lost_timer = 0;
chase_max = room_speed * 3;
mp_grid_add_instances(grid, Object19, false);

path = path_add();

// returning
return_x = x;
return_y = y;

is_dead = false;