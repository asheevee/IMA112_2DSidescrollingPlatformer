/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78C7982B
/// @DnDArgument : "var" "powerup_cooldown"
/// @DnDArgument : "op" "2"
if(powerup_cooldown > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E3392F0
	/// @DnDInput : 2
	/// @DnDParent : 78C7982B
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "powerup_cooldown"
	/// @DnDArgument : "var_1" "powerup_can_interact"
	powerup_cooldown += -1;
	powerup_can_interact = false;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E4E5D99
	/// @DnDParent : 78C7982B
	/// @DnDArgument : "var" "powerup_cooldown"
	if(powerup_cooldown == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 56BA3B52
		/// @DnDParent : 3E4E5D99
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "powerup_can_interact"
		powerup_can_interact = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7CB3C015
		/// @DnDParent : 3E4E5D99
		/// @DnDArgument : "spriteind" "orb_sprite"
		sprite_index = orb_sprite;
		image_index = 0;}}