/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12F426B2
/// @DnDComment : decrement powerup timers
/// @DnDArgument : "var" "powerup_timer_speed"
/// @DnDArgument : "op" "2"
if(powerup_timer_speed > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F9C4FD0
	/// @DnDParent : 12F426B2
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "powerup_timer_speed"
	powerup_timer_speed += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B2447DA
	/// @DnDParent : 12F426B2
	/// @DnDArgument : "var" "powerup_timer_speed"
	if(powerup_timer_speed == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57BB69C4
		/// @DnDComment : reset walk speed
		/// @DnDInput : 2
		/// @DnDParent : 5B2447DA
		/// @DnDArgument : "expr" "12"
		/// @DnDArgument : "expr_1" "move_anim_speed / 1.5"
		/// @DnDArgument : "var" "move_walkSpeed"
		/// @DnDArgument : "var_1" "move_anim_speed"
		move_walkSpeed = 12;
		move_anim_speed = move_anim_speed / 1.5;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18C5CF43
/// @DnDArgument : "var" "powerup_timer_jump"
/// @DnDArgument : "op" "2"
if(powerup_timer_jump > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4459037F
	/// @DnDParent : 18C5CF43
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "powerup_timer_jump"
	powerup_timer_jump += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39FEA12C
	/// @DnDParent : 18C5CF43
	/// @DnDArgument : "var" "powerup_timer_jump"
	if(powerup_timer_jump == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1059B0FF
		/// @DnDComment : reset jump speed
		/// @DnDParent : 39FEA12C
		/// @DnDArgument : "expr" "16"
		/// @DnDArgument : "var" "move_jumpSpeed"
		move_jumpSpeed = 16;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 148C6858
/// @DnDInput : 4
/// @DnDArgument : "expr" "keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < -0.2)"
/// @DnDArgument : "expr_1" "keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0.2)"
/// @DnDArgument : "expr_2" "keyboard_check(vk_up) || keyboard_check(vk_space) || gamepad_button_check(0, gp_face1)"
/// @DnDArgument : "expr_3" "keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1)"
/// @DnDArgument : "var" "control_input_left"
/// @DnDArgument : "var_1" "control_input_right"
/// @DnDArgument : "var_2" "control_input_jumpHold"
/// @DnDArgument : "var_3" "control_input_jumpInit"
control_input_left = keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || (gamepad_axis_value(0, gp_axislh) < -0.2);
control_input_right = keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || (gamepad_axis_value(0, gp_axislh) > 0.2);
control_input_jumpHold = keyboard_check(vk_up) || keyboard_check(vk_space) || gamepad_button_check(0, gp_face1);
control_input_jumpInit = keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0, gp_face1);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18B60183
/// @DnDArgument : "expr" "(control_input_right - control_input_left) * move_walkSpeed"
/// @DnDArgument : "var" "move_x"
move_x = (control_input_right - control_input_left) * move_walkSpeed;

/// @DnDAction : YoYo Games.Tiles.Tile_Get_At_Pixel
/// @DnDVersion : 1
/// @DnDHash : 7EAE411F
/// @DnDComment : Layer: the literal name of the layer of your tileset$(13_10)X/Y positions: the exact pixel to check the tile (my player sprite is 64x64 anchored at the middle, so Y 34 is 2 pixels below the bottom of the sprite)$(13_10)Target: the variable to write the tile index to$(13_10)$(13_10)If you were to change the X and Y to other points you could check for walls, ceilings, etc.$(13_10)$(13_10)(I put this up towards the top because I use this variable to check for other terrain types)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "34"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "var" "collision_tile_index"
/// @DnDArgument : "layername" ""Tiles_Collision""
var l7EAE411F_0 = layer_tilemap_get_id("Tiles_Collision");
collision_tile_index = undefined;
if(l7EAE411F_0 > -1) {
	var l7EAE411F_1 = tilemap_get_at_pixel(l7EAE411F_0, x + 0, y + 34);
	if(l7EAE411F_1 > -1) collision_tile_index = tile_get_index(l7EAE411F_1);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 58153010
/// @DnDComment : Tile indeces are numbered based on the tileset object$(13_10)Left to right, top to bottom, starting at 0 (for no tile)$(13_10)The death tile in my tileset is index 9 in the tileset object, it could be different in others
/// @DnDArgument : "var" "collision_tile_index"
/// @DnDArgument : "value" "9"
if(collision_tile_index == 9)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1484EF3D
	/// @DnDParent : 58153010
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2D699C27
/// @DnDComment : stop jumping if button no longer pressed$(13_10)set y speed near 0 (once only)
/// @DnDArgument : "expr" "control_input_jumpHold"
/// @DnDArgument : "not" "1"
if(!(control_input_jumpHold))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1CA0D370
	/// @DnDParent : 2D699C27
	/// @DnDArgument : "expr" "move_isJumping"
	if(move_isJumping)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C81E31F
		/// @DnDInput : 4
		/// @DnDParent : 1CA0D370
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_2" "-2"
		/// @DnDArgument : "var" "move_isJumping"
		/// @DnDArgument : "var_1" "move_jumpTimer"
		/// @DnDArgument : "var_2" "move_y"
		/// @DnDArgument : "var_3" "move_bufferedJump"
		move_isJumping = false;
		move_jumpTimer = 0;
		move_y = -2;
		move_bufferedJump = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3637D483
/// @DnDComment : stop jumping if timer runs out$(13_10)(gravity has already taken over by this point)
/// @DnDArgument : "expr" "move_isJumping and move_jumpTimer = 0"
if(move_isJumping and move_jumpTimer = 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58ED1886
	/// @DnDInput : 2
	/// @DnDParent : 3637D483
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "move_isJumping"
	/// @DnDArgument : "var_1" "move_bufferedJump"
	move_isJumping = false;
	move_bufferedJump = false;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 42678B7C
/// @DnDComment : allow buffered jumps
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "48"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l42678B7C_0 = instance_place(x + 0, y + 48, [collision_tilemap]);
if ((l42678B7C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 01DE7231
	/// @DnDParent : 42678B7C
	/// @DnDArgument : "expr" "control_input_jumpInit"
	if(control_input_jumpInit)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 652EFC70
		/// @DnDParent : 01DE7231
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "move_bufferedJump"
		move_bufferedJump = true;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 30D1C326
/// @DnDComment : every frame if not grounded, increment coyote time--$(13_10)allows the player to jump even for a few frames after falling off the edge,$(13_10)makes movement feel more fluid and forgiving
/// @DnDArgument : "var" "move_coyoteTime"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "move_coyoteTime_max"
if(move_coyoteTime <= move_coyoteTime_max)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 716A86A0
	/// @DnDParent : 30D1C326
	/// @DnDArgument : "expr" "control_input_jumpInit && move_y >= 0"
	if(control_input_jumpInit && move_y >= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5ADC3F99
		/// @DnDInput : 2
		/// @DnDParent : 716A86A0
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "move_jumpTimer_init"
		/// @DnDArgument : "var" "move_isJumping"
		/// @DnDArgument : "var_1" "move_jumpTimer"
		move_isJumping = true;
		move_jumpTimer = move_jumpTimer_init;
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 65C1AEEC
/// @DnDComment : touching the floor$(13_10)(high iteration count on move+collide should ensure no false negatives)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l65C1AEEC_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l65C1AEEC_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B3D9EF8
	/// @DnDInput : 3
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "var_1" "move_isGrounded"
	/// @DnDArgument : "var_2" "move_coyoteTime"
	move_y = 0;
	move_isGrounded = true;
	move_coyoteTime = 0;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2C69024F
	/// @DnDComment : set the jump bool and jump timer$(13_10)used for more fluid jumping (handled elsewhere)
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "expr" "move_bufferedJump && (control_input_jumpHold || control_input_jumpInit)"
	if(move_bufferedJump && (control_input_jumpHold || control_input_jumpInit))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2AF434B1
		/// @DnDInput : 2
		/// @DnDParent : 2C69024F
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "move_jumpTimer_init"
		/// @DnDArgument : "var" "move_isJumping"
		/// @DnDArgument : "var_1" "move_jumpTimer"
		move_isJumping = true;
		move_jumpTimer = move_jumpTimer_init;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A250E90
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 277B626B
	/// @DnDParent : 3A250E90
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "move_isGrounded"
	move_isGrounded = false;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5E4688A0
	/// @DnDParent : 3A250E90
	/// @DnDArgument : "expr" "move_isJumping"
	if(move_isJumping)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 283679B0
		/// @DnDParent : 5E4688A0
		/// @DnDArgument : "expr" "100"
		/// @DnDArgument : "var" "move_coyoteTime"
		move_coyoteTime = 100;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 68FD0524
	/// @DnDParent : 3A250E90
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B1C72DF
		/// @DnDParent : 68FD0524
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_coyoteTime"
		move_coyoteTime += 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3D7A6460
	/// @DnDComment : not grounded AND jump timer is running out$(13_10)apply gravity
	/// @DnDParent : 3A250E90
	/// @DnDArgument : "expr" "move_jumpTimer <= move_jumpTimer_init - move_jumpTimer_goStraightFrame"
	if(move_jumpTimer <= move_jumpTimer_init - move_jumpTimer_goStraightFrame)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DAB2ABF
		/// @DnDParent : 3D7A6460
		/// @DnDArgument : "expr" "move_freeGravity"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += move_freeGravity;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5351691C
/// @DnDArgument : "var" "move_isGrounded"
/// @DnDArgument : "value" "true"
if(move_isGrounded == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27DEE7D7
	/// @DnDComment : check for powerup terrain (jump)
	/// @DnDParent : 5351691C
	/// @DnDArgument : "var" "collision_tile_index"
	/// @DnDArgument : "value" "7"
	if(collision_tile_index == 7)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72C93EFC
		/// @DnDComment : set jump speed
		/// @DnDParent : 27DEE7D7
		/// @DnDArgument : "expr" "22"
		/// @DnDArgument : "var" "move_jumpSpeed"
		move_jumpSpeed = 22;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 23330742
	/// @DnDParent : 5351691C
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61B193D5
		/// @DnDParent : 23330742
		/// @DnDArgument : "var" "powerup_timer_jump"
		if(powerup_timer_jump == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 043A4497
			/// @DnDComment : reset jump speed
			/// @DnDParent : 61B193D5
			/// @DnDArgument : "expr" "16"
			/// @DnDArgument : "var" "move_jumpSpeed"
			move_jumpSpeed = 16;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61AFCFC3
	/// @DnDComment : check for powerup terrain (speed)
	/// @DnDParent : 5351691C
	/// @DnDArgument : "var" "collision_tile_index"
	/// @DnDArgument : "value" "4"
	if(collision_tile_index == 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68978C14
		/// @DnDComment : set walk speed
		/// @DnDParent : 61AFCFC3
		/// @DnDArgument : "expr" "18"
		/// @DnDArgument : "var" "move_walkSpeed"
		move_walkSpeed = 18;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 22DFB10A
	/// @DnDParent : 5351691C
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 074EDC6E
		/// @DnDParent : 22DFB10A
		/// @DnDArgument : "var" "powerup_timer_speed"
		if(powerup_timer_speed == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32E99A9E
			/// @DnDComment : reset walk speed
			/// @DnDParent : 074EDC6E
			/// @DnDArgument : "expr" "12"
			/// @DnDArgument : "var" "move_walkSpeed"
			move_walkSpeed = 12;
		}
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 2A904CB9
/// @DnDComment : allows animation to stop if colliding with a wall
/// @DnDArgument : "x" "2 * sign(move_x)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l2A904CB9_0 = instance_place(x + 2 * sign(move_x), y + 0, [collision_tilemap]);
if ((l2A904CB9_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 418A676A
	/// @DnDParent : 2A904CB9
	/// @DnDArgument : "var" "move_x"
	move_x = 0;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51DF6DBE
/// @DnDComment : handle jumping
/// @DnDArgument : "expr" "move_isJumping and move_jumpTimer > move_jumpTimer_init - move_jumpTimer_goStraightFrame"
if(move_isJumping and move_jumpTimer > move_jumpTimer_init - move_jumpTimer_goStraightFrame)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 311CA547
	/// @DnDComment : moves straight upwards for 10 frames as long as up/space is held$(13_10)(lets gravity take over after the 10 frames are up, but can still be interrupted later by releasing)
	/// @DnDParent : 51DF6DBE
	/// @DnDArgument : "expr" "-move_jumpSpeed"
	/// @DnDArgument : "var" "move_y"
	move_y = -move_jumpSpeed;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 23829D9F
/// @DnDComment : decrement the jump timer
/// @DnDArgument : "expr" "move_isJumping"
if(move_isJumping)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C1ACA0F
	/// @DnDParent : 23829D9F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "move_jumpTimer"
	move_jumpTimer += -1;
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 7C9F472D
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "num_iterations" "8"
/// @DnDArgument : "maxxmove" "move_walkSpeed"
/// @DnDArgument : "maxymove" "48"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,8,0,0,move_walkSpeed,48);