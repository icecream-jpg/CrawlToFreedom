// draw key if player is close enough within fog
var _dist_to_player = point_distance(x, y, obj_player.x, obj_player.y);
if (_dist_to_player < 150) { 
    draw_self(); 
}