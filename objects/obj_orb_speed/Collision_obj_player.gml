/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 733F4583
/// @DnDArgument : "expr" "powerup_can_interact"
if(powerup_can_interact){	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2040E39E
	/// @DnDParent : 733F4583
	/// @DnDArgument : "spriteind" "spr_orb_cooldown"
	/// @DnDSaveInfo : "spriteind" "spr_orb_cooldown"
	sprite_index = spr_orb_cooldown;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31499EAE
	/// @DnDParent : 733F4583
	/// @DnDArgument : "expr" "900"
	/// @DnDArgument : "var" "powerup_cooldown"
	powerup_cooldown = 900;}