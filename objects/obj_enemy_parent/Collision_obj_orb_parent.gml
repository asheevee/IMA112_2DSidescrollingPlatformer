/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 77294721
/// @DnDApplyTo : {obj_orb_speed}
/// @DnDArgument : "expr" "powerup_can_interact"
with(obj_orb_parent) var l77294721_0 = powerup_can_interact;
if(l77294721_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 113B21C3
	/// @DnDComment : double walk speed for 10 seconds
	/// @DnDInput : 3
	/// @DnDParent : 77294721
	/// @DnDArgument : "expr" "move_walkSpeed * 2"
	/// @DnDArgument : "expr_1" "600"
	/// @DnDArgument : "expr_2" "move_anim_speed * 2"
	/// @DnDArgument : "var" "move_walkSpeed"
	/// @DnDArgument : "var_1" "powerup_timer_speed"
	/// @DnDArgument : "var_2" "move_anim_speed"
	move_walkSpeed = move_walkSpeed * 2;
	powerup_timer_speed = 600;
	move_anim_speed = move_anim_speed * 2;
}