/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 56325797
/// @DnDComment : -1 = left$(13_10)0 = still$(13_10)1 = right
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03562A2A
/// @DnDArgument : "expr" "move_x * move_walkSpeed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * move_walkSpeed;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 7452089E
/// @DnDComment : stop jumping if button no longer pressed$(13_10)set y speed to 0 (once only)
/// @DnDArgument : "not" "1"
var l7452089E_0;
l7452089E_0 = keyboard_check(vk_space);
if (!l7452089E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1CA0D370
	/// @DnDParent : 7452089E
	/// @DnDArgument : "expr" "move_isJumping"
	if(move_isJumping)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C81E31F
		/// @DnDInput : 3
		/// @DnDParent : 1CA0D370
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "move_isJumping"
		/// @DnDArgument : "var_1" "move_jumpTimer"
		/// @DnDArgument : "var_2" "move_y"
		move_isJumping = false;
		move_jumpTimer = 0;
		move_y = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3637D483
/// @DnDComment : stop jumping if timer runs out$(13_10)set y speed to 0 (once only)
/// @DnDArgument : "expr" "move_isJumping and move_jumpTimer = 0"
if(move_isJumping and move_jumpTimer = 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58ED1886
	/// @DnDInput : 2
	/// @DnDParent : 3637D483
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "move_isJumping"
	/// @DnDArgument : "var_1" "move_y"
	move_isJumping = false;
	move_y = 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 65C1AEEC
/// @DnDComment : within 2 pixels of the floor on y axis$(13_10)(is grounded)
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_floor1"
/// @DnDSaveInfo : "object" "obj_floor1"
var l65C1AEEC_0 = instance_place(x + 0, y + 2, [obj_floor1]);
if ((l65C1AEEC_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13388499
	/// @DnDParent : 65C1AEEC
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 28348B33
	/// @DnDComment : set the jump bool and jump timer$(13_10)used for more fluid jumping (handled elsewhere)
	/// @DnDParent : 65C1AEEC
	var l28348B33_0;
	l28348B33_0 = keyboard_check_pressed(vk_space);
	if (l28348B33_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2AF434B1
		/// @DnDInput : 2
		/// @DnDParent : 28348B33
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "20"
		/// @DnDArgument : "var" "move_isJumping"
		/// @DnDArgument : "var_1" "move_jumpTimer"
		move_isJumping = true;
		move_jumpTimer = 20;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3A250E90
/// @DnDComment : not grounded AND not currently jumping$(13_10)apply gravity
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3D7A6460
	/// @DnDParent : 3A250E90
	/// @DnDArgument : "expr" "move_isJumping"
	/// @DnDArgument : "not" "1"
	if(!(move_isJumping))
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

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 51DF6DBE
/// @DnDComment : handle jumping
/// @DnDArgument : "expr" "move_isJumping and move_jumpTimer > 0"
if(move_isJumping and move_jumpTimer > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 311CA547
	/// @DnDComment : moves straight upwards for 20 frames as long as up/space is held
	/// @DnDInput : 2
	/// @DnDParent : 51DF6DBE
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-move_jumpSpeed"
	/// @DnDArgument : "var" "move_jumpTimer"
	/// @DnDArgument : "var_1" "move_y"
	move_jumpTimer += -1;
	move_y = -move_jumpSpeed;
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 7C9F472D
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "move_walkSpeed"
/// @DnDArgument : "maxymove" "48"
/// @DnDArgument : "object" "obj_floor1"
/// @DnDSaveInfo : "object" "obj_floor1"
move_and_collide(move_x, move_y, obj_floor1,4,0,0,move_walkSpeed,48);