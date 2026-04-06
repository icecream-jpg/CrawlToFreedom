
var dx = 0, dy = 0;
switch (dir) {
    case 0: dy = -spd; break;
    case 1: dx =  spd; break;
    case 2: dy =  spd; break;
    case 3: dx = -spd; break;
}

if (place_meeting(x+dx, y+dy, obj_wall)) {
    
    dir = (dir + 1) % 4;
} else {
    x += dx;
    y += dy;
}


if (place_meeting(x, y, obj_player)) {
    (room_goto(GameOver));
}