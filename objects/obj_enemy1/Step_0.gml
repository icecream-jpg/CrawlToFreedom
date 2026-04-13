audio_emitter_position(emitter, obj_enemy1.x, obj_enemy1.y, 0);

var dx = 0, dy = 0;
switch (dir) {
    case 0: dy = -spd; break; // up
    case 1: dx = spd; break;  // right
    case 2: dy = spd; break;  // down
    case 3: dx = -spd; break; // left
}
x += dx;
y += dy;
rem_dist -= spd;


if (rem_dist <= 0) {
 
    dir = (dir+ 1) % 4;
    rem_dist = move_dist;
}


if (place_meeting(x, y, obj_player)) {
    room_goto(GameOver); // 
}