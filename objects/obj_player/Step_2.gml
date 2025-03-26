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
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3AEF0E53
		/// @DnDParent : 34F658DE
		/// @DnDArgument : "speed" "sign(move_x) * move_anim_speed"
		image_speed = sign(move_x) * move_anim_speed;
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
		/// @DnDArgument : "spriteind" "spr_player_walk"
		/// @DnDSaveInfo : "spriteind" "spr_player_walk"
		sprite_index = spr_player_walk;
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
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 285EE86D
			/// @DnDParent : 29867309
			/// @DnDArgument : "var" "move_x"
			/// @DnDArgument : "not" "1"
			if(!(move_x == 0))
			{
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 1AB54B22
				/// @DnDParent : 285EE86D
				/// @DnDArgument : "speed" "-sign(move_x) / 30"
				/// @DnDArgument : "speed_relative" "1"
				image_speed += -sign(move_x) / 30;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 302215F8
				/// @DnDParent : 285EE86D
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "move_air_rotation_drag_timer"
				move_air_rotation_drag_timer += -1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10C766B8
				/// @DnDParent : 285EE86D
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
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 06D55967
			/// @DnDParent : 29867309
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6BEDB0C1
				/// @DnDParent : 06D55967
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "var" "move_air_rotation_drag_timer"
				move_air_rotation_drag_timer = -1;
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
				/// @DnDVersion : 1
				/// @DnDHash : 7E4D9521
				/// @DnDParent : 06D55967
				/// @DnDArgument : "speed" "0"
				image_speed = 0;
			}
		}
	}
}

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

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 592AA920
/// @DnDComment : deals with getting stuck in walls from janky instance scaling:$(13_10)checks all four directions, pushes the player outwards until there is no longer a collision$(13_10)also resets vertical speed and cancels a jump if a ceiling is hit
while(true)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1E79E63E
	/// @DnDParent : 592AA920
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "obj" "collision_tilemap"
	var l1E79E63E_0 = collision_point(x + 32, y + 0, collision_tilemap, true, 1);
	if((l1E79E63E_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C1176C7
		/// @DnDParent : 1E79E63E
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += -1;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 711FEA14
	/// @DnDParent : 592AA920
	/// @DnDArgument : "x" "-32"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "obj" "collision_tilemap"
	var l711FEA14_0 = collision_point(x + -32, y + 0, collision_tilemap, true, 1);
	if((l711FEA14_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09080BC9
		/// @DnDParent : 711FEA14
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += 1;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 13B3A8F4
	/// @DnDParent : 592AA920
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "32"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "obj" "collision_tilemap"
	var l13B3A8F4_0 = collision_point(x + 0, y + 32, collision_tilemap, true, 1);
	if((l13B3A8F4_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CBFC19D
		/// @DnDParent : 13B3A8F4
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += -1;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 77C409BA
	/// @DnDParent : 592AA920
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-32"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "obj" "collision_tilemap"
	var l77C409BA_0 = collision_point(x + 0, y + -32, collision_tilemap, true, 1);
	if((l77C409BA_0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41D48A48
		/// @DnDInput : 3
		/// @DnDParent : 77C409BA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "var_1" "move_y"
		/// @DnDArgument : "var_2" "move_jumpTimer"
		y += 1;
		move_y = 0;
		move_jumpTimer = 0;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 4B8C581E
	/// @DnDParent : 592AA920
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	/// @DnDArgument : "not" "1"
	var l4B8C581E_0 = instance_place(x + 0, y + 0, [collision_tilemap]);
	if (!(l4B8C581E_0 > 0))
	{
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 2FD06318
		/// @DnDParent : 4B8C581E
		break;
	}
}