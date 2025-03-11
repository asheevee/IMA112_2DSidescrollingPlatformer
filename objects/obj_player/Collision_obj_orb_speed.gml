/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 77294721
/// @DnDApplyTo : {obj_orb_speed}
/// @DnDArgument : "expr" "powerup_can_interact"
with(obj_orb_speed) var l77294721_0 = powerup_can_interact;
if(l77294721_0){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7E9D1CE8
	/// @DnDApplyTo : other
	/// @DnDParent : 77294721
	/// @DnDArgument : "spriteind" "spr_orb_cooldown"
	/// @DnDSaveInfo : "spriteind" "spr_orb_cooldown"
	with(other) {
	sprite_index = spr_orb_cooldown;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 113B21C3
	/// @DnDComment : double walk speed for 10 seconds
	/// @DnDInput : 4
	/// @DnDParent : 77294721
	/// @DnDArgument : "expr" "move_walkSpeed * 2"
	/// @DnDArgument : "expr_1" "600"
	/// @DnDArgument : "expr_2" "move_anim_speed * 2"
	/// @DnDArgument : "expr_3" "900"
	/// @DnDArgument : "var" "move_walkSpeed"
	/// @DnDArgument : "var_1" "powerup_timer_speed"
	/// @DnDArgument : "var_2" "move_anim_speed"
	/// @DnDArgument : "var_3" "obj_orb_speed.powerup_cooldown"
	move_walkSpeed = move_walkSpeed * 2;
	powerup_timer_speed = 600;
	move_anim_speed = move_anim_speed * 2;
	obj_orb_speed.powerup_cooldown = 900;}