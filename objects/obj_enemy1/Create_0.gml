emitter = audio_emitter_create();
audio_emitter_falloff(emitter, 75, 200, 1.5);
audio_play_sound_on(emitter, enemy_mumble_2_, true, 1, 0.25);
