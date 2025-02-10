/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 77294721
/// @DnDApplyTo : {obj_orb_speed}
/// @DnDArgument : "expr" "powerup_can_interact"
with(obj_orb_speed) var l77294721_0 = powerup_can_interact;
if(l77294721_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 113B21C3
	/// @DnDComment : double walk speed for 10 seconds
	/// @DnDInput : 2
	/// @DnDParent : 77294721
	/// @DnDArgument : "expr" "24"
	/// @DnDArgument : "expr_1" "600"
	/// @DnDArgument : "var" "move_walkSpeed"
	/// @DnDArgument : "var_1" "powerup_timer"
	move_walkSpeed = 24;
	powerup_timer = 600;}