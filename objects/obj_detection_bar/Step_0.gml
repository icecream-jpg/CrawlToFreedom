// if player growls, bar jumps up fast!
if (keyboard_check_pressed(vk_space)) { 
    detection_level += 25; 
    slow_timer = 180;      // reset slow drain timer
}

// bar draining
if (slow_timer > 0) {
    slow_timer--; //time slows down by 1 each frame, subtracts
    detection_level -= 0.1; //slow
} else {
    detection_level -= 0.5; //fast
}

// keep bar b/w 0 and 100
detection_level = clamp(detection_level, 0, max_detection);

if detection_level = 100 {
	room_goto(GameOver)
}

if detection_level > 70 {
	if (audioPlaying == false){
		audioPlaying = true
		audio_play_sound(barwarningdemo, 1, true);}

}
if detection_level < 70 {
	audioPlaying = false
	audio_stop_sound(barwarningdemo);
}