with (obj_player) {  
    array_push(keys_collected, other.key_type); 

instance_destroy(obj_greenkey);
audio_play_sound(keycollect, 1, false);
}