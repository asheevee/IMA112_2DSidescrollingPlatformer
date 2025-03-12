/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51CCE10F
/// @DnDApplyTo : other
/// @DnDArgument : "var" "powerup_can_interact"
/// @DnDArgument : "value" "true"
with(other) var l51CCE10F_0 = powerup_can_interact == true;
if(l51CCE10F_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0E8C9998
	/// @DnDApplyTo : other
	/// @DnDParent : 51CCE10F
	/// @DnDArgument : "spriteind" "spr_orb_cooldown"
	/// @DnDSaveInfo : "spriteind" "spr_orb_cooldown"
	with(other) {
	sprite_index = spr_orb_cooldown;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27475856
	/// @DnDApplyTo : other
	/// @DnDParent : 51CCE10F
	/// @DnDArgument : "expr" "powerup_cooldown_init"
	/// @DnDArgument : "var" "powerup_cooldown"
	with(other) {
	powerup_cooldown = powerup_cooldown_init;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7BAAA386
	/// @DnDInput : 2
	/// @DnDParent : 51CCE10F
	/// @DnDArgument : "expr" "22"
	/// @DnDArgument : "expr_1" "600"
	/// @DnDArgument : "var" "move_jumpSpeed"
	/// @DnDArgument : "var_1" "powerup_timer_jump"
	move_jumpSpeed = 22;
	powerup_timer_jump = 600;}