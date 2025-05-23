/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A0BFBE5
/// @DnDApplyTo : other
/// @DnDArgument : "var" "powerup_can_interact"
/// @DnDArgument : "value" "true"
with(other) var l5A0BFBE5_0 = powerup_can_interact == true;
if(l5A0BFBE5_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4C40B2F5
	/// @DnDApplyTo : other
	/// @DnDParent : 5A0BFBE5
	/// @DnDArgument : "spriteind" "spr_orb_cooldown"
	/// @DnDSaveInfo : "spriteind" "spr_orb_cooldown"
	with(other) {
	sprite_index = spr_orb_cooldown;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CD5947E
	/// @DnDApplyTo : other
	/// @DnDParent : 5A0BFBE5
	/// @DnDArgument : "expr" "powerup_cooldown_init"
	/// @DnDArgument : "var" "powerup_cooldown"
	with(other) {
	powerup_cooldown = powerup_cooldown_init;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21AB6160
	/// @DnDComment : double walk speed for 10 seconds
	/// @DnDInput : 3
	/// @DnDParent : 5A0BFBE5
	/// @DnDArgument : "expr" "18"
	/// @DnDArgument : "expr_1" "600"
	/// @DnDArgument : "expr_2" "move_anim_speed * 1.5"
	/// @DnDArgument : "var" "move_walkSpeed"
	/// @DnDArgument : "var_1" "powerup_timer_speed"
	/// @DnDArgument : "var_2" "move_anim_speed"
	move_walkSpeed = 18;
	powerup_timer_speed = 600;
	move_anim_speed = move_anim_speed * 1.5;}