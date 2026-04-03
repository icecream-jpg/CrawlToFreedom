/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 6D68DE48
event_inherited();

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 1018956C
/// @DnDArgument : "soundid" "crawltitle"
/// @DnDSaveInfo : "soundid" "crawltitle"
audio_stop_sound(crawltitle);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1FB0BAD3
/// @DnDArgument : "soundid" "select"
/// @DnDSaveInfo : "soundid" "select"
audio_play_sound(select, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 5377DB24
/// @DnDArgument : "room" "Level1"
/// @DnDSaveInfo : "room" "Level1"
room_goto(Level1);