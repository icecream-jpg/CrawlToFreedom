with (obj_player) {  
    array_push(keys_collected, other.key_type); 
item=true;
instance_destroy(obj_redkey);
audio_play_sound(keycollect, 1, false);
}