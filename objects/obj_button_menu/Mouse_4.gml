/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 48994349
event_inherited();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 39634FE0
/// @DnDArgument : "soundid" "select"
/// @DnDSaveInfo : "soundid" "select"
audio_play_sound(select, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 5F35639D
/// @DnDArgument : "room" "TitleScreen"
/// @DnDSaveInfo : "room" "TitleScreen"
room_goto(TitleScreen);