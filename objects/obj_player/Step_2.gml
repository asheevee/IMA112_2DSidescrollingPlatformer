/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 638EE3BC
/// @DnDComment : moving up
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4E78ED8A
	/// @DnDParent : 638EE3BC
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_jump"
	/// @DnDSaveInfo : "spriteind" "spr_player_jump"
	sprite_index = spr_player_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CE6636C
/// @DnDComment : moving down
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 337050BB
	/// @DnDParent : 0CE6636C
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_player_fall"
	/// @DnDSaveInfo : "spriteind" "spr_player_fall"
	sprite_index = spr_player_fall;
	image_index += 0;
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
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
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
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 663735AF
			/// @DnDParent : 75E5E8A3
			/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
			/// @DnDArgument : "yscale" "image_yscale"
			image_xscale = -1 * abs(image_xscale);
			image_yscale = image_yscale;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 613948F4
		/// @DnDParent : 34F658DE
		else
		{
			/// @DnDAction : YoYo Games.Instances.Sprite_Scale
			/// @DnDVersion : 1
			/// @DnDHash : 4BD315B7
			/// @DnDParent : 613948F4
			/// @DnDArgument : "xscale" "abs(image_xscale)"
			/// @DnDArgument : "yscale" "image_yscale"
			image_xscale = abs(image_xscale);
			image_yscale = image_yscale;
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
		/// @DnDArgument : "spriteind" "spr_player_idle"
		/// @DnDSaveInfo : "spriteind" "spr_player_idle"
		sprite_index = spr_player_idle;
		image_index += 0;
	}
}