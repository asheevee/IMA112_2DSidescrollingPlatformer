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
/// @DnDHash : 56325797
/// @DnDComment : -1 = left$(13_10)0 = still$(13_10)1 = right
/// @DnDArgument : "expr" "(keyboard_check(vk_right) - keyboard_check(vk_left)) * move_walkSpeed"
/// @DnDArgument : "var" "move_x"
move_x = (keyboard_check(vk_right) - keyboard_check(vk_left)) * move_walkSpeed;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7452089E
/// @DnDComment : stop jumping if button no longer pressed$(13_10)set y speed near 0 (once only)
/// @DnDArgument : "not" "1"
var l7452089E_0;
l7452089E_0 = keyboard_check(vk_space);
if (!l7452089E_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 10F1775A
	/// @DnDParent : 7452089E
	/// @DnDArgument : "key" "vk_up"
	/// @DnDArgument : "not" "1"
	var l10F1775A_0;
	l10F1775A_0 = keyboard_check(vk_up);
	if (!l10F1775A_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1CA0D370
		/// @DnDParent : 10F1775A
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
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 28348B33
	/// @DnDParent : 42678B7C
	var l28348B33_0;
	l28348B33_0 = keyboard_check_pressed(vk_space);
	if (l28348B33_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 652EFC70
		/// @DnDParent : 28348B33
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "move_bufferedJump"
		move_bufferedJump = true;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7E0CEB74
	/// @DnDParent : 42678B7C
	/// @DnDArgument : "key" "vk_up"
	var l7E0CEB74_0;
	l7E0CEB74_0 = keyboard_check_pressed(vk_up);
	if (l7E0CEB74_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 629F3677
		/// @DnDParent : 7E0CEB74
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "move_bufferedJump"
		move_bufferedJump = true;
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
	/// @DnDInput : 2
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "var_1" "move_isGrounded"
	move_y = 0;
	move_isGrounded = true;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2C69024F
	/// @DnDComment : set the jump bool and jump timer$(13_10)used for more fluid jumping (handled elsewhere)
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "expr" "move_bufferedJump"
	if(move_bufferedJump)
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
/// @DnDComment : not grounded AND jump timer is running out$(13_10)apply gravity
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
	/// @DnDHash : 3D7A6460
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
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2AFEB91B
	/// @DnDComment : check for powerup terrain (jump)
	/// @DnDParent : 5351691C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "powerup_tilemap_jump"
	var l2AFEB91B_0 = instance_place(x + 0, y + 2, [powerup_tilemap_jump]);
	if ((l2AFEB91B_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 72C93EFC
		/// @DnDComment : set jump speed
		/// @DnDParent : 2AFEB91B
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

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 6236BA29
	/// @DnDComment : check for powerup terrain (speed)
	/// @DnDParent : 5351691C
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "powerup_tilemap_speed"
	var l6236BA29_0 = instance_place(x + 0, y + 2, [powerup_tilemap_speed]);
	if ((l6236BA29_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68978C14
		/// @DnDComment : set walk speed
		/// @DnDParent : 6236BA29
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