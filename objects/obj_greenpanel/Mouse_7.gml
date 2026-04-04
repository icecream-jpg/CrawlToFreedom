var player = instance_nearest(x, y, obj_player);
if (instance_exists(player) && point_distance(x, y, player.x, player.y) < 50) {//check if player is around
    
    var has_key = false;
    for (var i = 0; i < array_length(player.keys_collected); i++) { // check if player have the key
       
        if (player.keys_collected[i] == required_key) { 
            has_key = true;
          
            array_delete(player.keys_collected, i, 1);
            break;
        }
    }
    
   
    if (has_key) {
		//unlock
        unlocked = true;
		audio_play_sound(paneldisabled, 1, false)
       show_message("panel unlocked")
<<<<<<< HEAD
=======
	   instance_destroy(obj_greenpanel);
	   
>>>>>>> parent of 8bfa856 (Revert "Merge branch 'main' of https://github.com/icecream-jpg/CrawlToFreedom")
     
    } else {
       //still lock
        show_message("require " + required_key + " key");
    }
}
