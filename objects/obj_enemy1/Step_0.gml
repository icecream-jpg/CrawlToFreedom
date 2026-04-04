

/// STEP EVENT

// Update audio emitter
audio_emitter_position(emitter, x, y, 0);

// Debug
show_debug_message("State: " + string(state));

// DEBUG: press SPACE to force chase
if (keyboard_check_pressed(vk_space)) {
    state = "chase";
    target = instance_find(obj_player, 0);

    chase_timer = chase_max;
    lost_timer = 0;

    return_x = x;
    return_y = y;
}

// ================= PATROL =================
if (state == "patrol") {

    var tx = patrol_points[patrol_index][0];
    var ty = patrol_points[patrol_index][1];

    move_towards_point(tx, ty, speed_patrol);

    if (point_distance(x, y, tx, ty) < 2) {
        patrol_index = (patrol_index + 1) mod array_length(patrol_points);
    }

    // Distance detection ONLY (no wall check)
    var player = instance_find(obj_player, 0);

    if (player != noone) {

        var dist = point_distance(x, y, player.x, player.y);

        if (dist <= detect_range) {

            show_debug_message("Player detected");

            target = player;
            state = "chase";

            chase_timer = chase_max;

            return_x = x;
            return_y = y;
        }
    }
}

// ================= CHASE =================
if (state == "chase") {

    if (target != noone) {

        // Recalculate path every few frames
        if (current_time mod 10 == 0) {
            mp_grid_path(grid, path, x, y, target.x, target.y, true);
            path_start(path, speed_patrol, path_action_stop, false);
        }

        // ---- Vision check with buffer ----
        var dir = point_direction(x, y, target.x, target.y);

        var ox = lengthdir_x(6, dir);
        var oy = lengthdir_y(6, dir);


        // Lose target ONLY after some time (prevents flicker)
        if (lost_timer > room_speed * 0.5) { // 0.5 seconds buffer
            path_end();
            state = "return";
        }
    }

    chase_timer--;

    if (chase_timer <= 0) {
        path_end();
        state = "return";
    }
}

// ================= RETURN =================
if (state == "return") {

    if (current_time mod 10 == 0) {
        mp_grid_path(grid, path, x, y, return_x, return_y, true);
        path_start(path, speed_patrol, path_action_stop, false);
    }

    if (point_distance(x, y, return_x, return_y) < 0) {
        path_end();
        state = "patrol";
    }
}
