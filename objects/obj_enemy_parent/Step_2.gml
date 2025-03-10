/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 638EE3BC
/// @DnDComment : moving up
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 664439EF
	/// @DnDParent : 638EE3BC
	/// @DnDArgument : "yscale" "1 - (-1 * round(move_y / 8) * 8 / 96)"
	image_xscale = 1;
	image_yscale = 1 - (-1 * round(move_y / 8) * 8 / 96);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0201AFB3
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CE6636C
	/// @DnDComment : moving down
	/// @DnDParent : 0201AFB3
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "2"
	if(move_y > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 45D33F38
		/// @DnDParent : 0CE6636C
		/// @DnDArgument : "xscale" "1 - (round(move_y / 8) * 8 / 128)"
		image_xscale = 1 - (round(move_y / 8) * 8 / 128);
		image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 66E26520
	/// @DnDParent : 0201AFB3
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 5DCBD5CB
		/// @DnDParent : 66E26520
		image_xscale = 1;
		image_yscale = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 63FA87B3
/// @DnDArgument : "expr" "move_isGrounded"
if(move_isGrounded)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34F658DE
	/// @DnDComment : moving horizontally
	/// @DnDParent : 63FA87B3
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "not" "1"
	if(!(move_x == 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 225103BD
		/// @DnDParent : 34F658DE
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_walk"
		sprite_index = spr_enemy1_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75E5E8A3
		/// @DnDComment : moving left
		/// @DnDParent : 34F658DE
		/// @DnDArgument : "var" "move_x"
		/// @DnDArgument : "op" "1"
		if(move_x < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 3AEF0E53
			/// @DnDParent : 75E5E8A3
			/// @DnDArgument : "speed" "-1 * move_anim_speed"
			image_speed = -1 * move_anim_speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D1B9B0D
			/// @DnDParent : 75E5E8A3
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "move_face_dir"
			move_face_dir = -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 613948F4
		/// @DnDParent : 34F658DE
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1C2CB967
			/// @DnDParent : 613948F4
			/// @DnDArgument : "speed" "move_anim_speed"
			image_speed = move_anim_speed;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 342FFD8E
			/// @DnDParent : 613948F4
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "move_face_dir"
			move_face_dir = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3D13D235
	/// @DnDParent : 63FA87B3
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 03D2C48A
		/// @DnDParent : 3D13D235
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy1_walk"
		/// @DnDSaveInfo : "spriteind" "spr_enemy1_walk"
		sprite_index = spr_enemy1_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7CE3A530
		/// @DnDParent : 3D13D235
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F4BB310
	/// @DnDParent : 63FA87B3
	/// @DnDArgument : "var" "move_air_rotation_drag_timer"
	move_air_rotation_drag_timer = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AF37669
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C481448
	/// @DnDComment : gradually slows down the animation if in midair
	/// @DnDParent : 7AF37669
	/// @DnDArgument : "var" "move_air_rotation_drag_timer"
	if(move_air_rotation_drag_timer == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1928D36E
		/// @DnDParent : 0C481448
		/// @DnDArgument : "expr" "move_anim_speed * 30"
		/// @DnDArgument : "var" "move_air_rotation_drag_timer"
		move_air_rotation_drag_timer = move_anim_speed * 30;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 50FCBE63
	/// @DnDParent : 7AF37669
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29867309
		/// @DnDParent : 50FCBE63
		/// @DnDArgument : "var" "move_air_rotation_drag_timer"
		/// @DnDArgument : "op" "2"
		if(move_air_rotation_drag_timer > 0)
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 1AB54B22
			/// @DnDParent : 29867309
			/// @DnDArgument : "speed" "-move_face_dir / 30"
			/// @DnDArgument : "speed_relative" "1"
			image_speed += -move_face_dir / 30;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 302215F8
			/// @DnDParent : 29867309
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "move_air_rotation_drag_timer"
			move_air_rotation_drag_timer += -1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 10C766B8
			/// @DnDParent : 29867309
			/// @DnDArgument : "var" "move_air_rotation_drag_timer"
			if(move_air_rotation_drag_timer == 0)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6D6F1108
				/// @DnDParent : 10C766B8
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "move_air_rotation_drag_timer"
				move_air_rotation_drag_timer = -1;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 48E4FD65
				/// @DnDParent : 10C766B8
				/// @DnDArgument : "speed" "0"
				image_speed = 0;
			}
		}
	}
}