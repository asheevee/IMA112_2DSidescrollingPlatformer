/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AE8FF80
/// @DnDArgument : "var" "obj_player.powerup_timer_jump"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "120"
if(obj_player.powerup_timer_jump > 120){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4484896E
	/// @DnDParent : 2AE8FF80
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	/// @DnDArgument : "xscale" "obj_player.image_xscale"
	/// @DnDArgument : "yscale" "obj_player.image_yscale"
	/// @DnDArgument : "sprite" "spr_player_segment_jump"
	/// @DnDArgument : "frame" "obj_player.image_index"
	/// @DnDSaveInfo : "sprite" "spr_player_segment_jump"
	draw_sprite_ext(spr_player_segment_jump, obj_player.image_index, obj_player.x, obj_player.y, obj_player.image_xscale, obj_player.image_yscale, 0, $FFFFFF & $ffffff, 1);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3DBF8D1B
else{	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04C9F776
	/// @DnDParent : 3DBF8D1B
	/// @DnDArgument : "var" "obj_player.powerup_timer_jump"
	/// @DnDArgument : "op" "2"
	if(obj_player.powerup_timer_jump > 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37D7FA24
		/// @DnDParent : 04C9F776
		/// @DnDArgument : "var" "obj_player.powerup_timer_jump % 4"
		/// @DnDArgument : "op" "3"
		/// @DnDArgument : "value" "1"
		if(obj_player.powerup_timer_jump % 4 <= 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 455FCF88
			/// @DnDParent : 37D7FA24
			/// @DnDArgument : "x" "obj_player.x"
			/// @DnDArgument : "y" "obj_player.y"
			/// @DnDArgument : "xscale" "obj_player.image_xscale"
			/// @DnDArgument : "yscale" "obj_player.image_yscale"
			/// @DnDArgument : "sprite" "spr_player_segment_jump"
			/// @DnDArgument : "frame" "obj_player.image_index"
			/// @DnDSaveInfo : "sprite" "spr_player_segment_jump"
			draw_sprite_ext(spr_player_segment_jump, obj_player.image_index, obj_player.x, obj_player.y, obj_player.image_xscale, obj_player.image_yscale, 0, $FFFFFF & $ffffff, 1);}}}