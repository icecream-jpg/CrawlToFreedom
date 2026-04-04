/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 49BE4953
/// @DnDArgument : "font" "fnt_help"
/// @DnDSaveInfo : "font" "fnt_help"
draw_set_font(fnt_help);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 50459323
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Click the arrows on the screen to move.\nEach click will move you one step in the direction you chose.\nClick the growl button to locate the nearest objects.\nThe squares represent panels, circles represent keys.\nThis will be the only way to get out.\nEvery growl will raise your detection bar.\nDO NOT LET IT FULLY FILL UP.\nYou are not alone in the vents.\nStay on the move, conserve your usage of the growl, and goodluck.""
draw_text(x + 0, y + 0, string("Click the arrows on the screen to move.\nEach click will move you one step in the direction you chose.\nClick the growl button to locate the nearest objects.\nThe squares represent panels, circles represent keys.\nThis will be the only way to get out.\nEvery growl will raise your detection bar.\nDO NOT LET IT FULLY FILL UP.\nYou are not alone in the vents.\nStay on the move, conserve your usage of the growl, and goodluck.") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3A93A544
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0B125AF0
draw_set_halign(fa_left);
draw_set_valign(fa_top);