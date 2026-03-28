with (obj_player) {  
    array_push(keys_collected, other.key_type); 

instance_destroy(obj_yellowkey);
audio_play_sound(keycollect, 1, false);
}