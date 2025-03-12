/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AE8FF80
/// @DnDArgument : "var" "obj_player.powerup_timer_speed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "120"
if(obj_player.powerup_timer_speed > 120){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4484896E
	/// @DnDParent : 2AE8FF80
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	/// @DnDArgument : "xscale" "obj_player.image_xscale"
	/// @DnDArgument : "yscale" "obj_player.image_yscale"
	/// @DnDArgument : "sprite" "spr_player_segment_speed"
	/// @DnDArgument : "frame" "obj_player.image_index"
	/// @DnDSaveInfo : "sprite" "spr_player_segment_speed"
	draw_sprite_ext(spr_player_segment_speed, obj_player.image_index, obj_player.x, obj_player.y, obj_player.image_xscale, obj_player.image_yscale, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7514C979
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D16C1F7
	/// @DnDParent : 7514C979
	/// @DnDArgument : "var" "obj_player.powerup_timer_speed"
	/// @DnDArgument : "op" "2"
	if(obj_player.powerup_timer_speed > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 530BF557
		/// @DnDParent : 0D16C1F7
		/// @DnDArgument : "var" "obj_player.powerup_timer_speed % 4"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "1"
		if(obj_player.powerup_timer_speed % 4 <= 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 303249C5
			/// @DnDParent : 530BF557
			/// @DnDArgument : "x" "obj_player.x"
			/// @DnDArgument : "y" "obj_player.y"
			/// @DnDArgument : "xscale" "obj_player.image_xscale"
			/// @DnDArgument : "yscale" "obj_player.image_yscale"
			/// @DnDArgument : "sprite" "spr_player_segment_speed"
			/// @DnDArgument : "frame" "obj_player.image_index"
			/// @DnDSaveInfo : "sprite" "spr_player_segment_speed"
			draw_sprite_ext(spr_player_segment_speed, obj_player.image_index, obj_player.x, obj_player.y, obj_player.image_xscale, obj_player.image_yscale, 0, $FFFFFF & $ffffff, 1);}}}