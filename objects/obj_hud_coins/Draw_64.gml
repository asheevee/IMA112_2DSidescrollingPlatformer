/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7642BBD1
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l7642BBD1_0 = false;
l7642BBD1_0 = instance_exists(obj_player);
if(!l7642BBD1_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 19D8F897
	/// @DnDParent : 7642BBD1
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 67F4CFBC
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4CACEEAB
/// @DnDArgument : "font" "font_opensans"
/// @DnDSaveInfo : "font" "font_opensans"
draw_set_font(font_opensans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0645DB27
/// @DnDArgument : "x" "32"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""x ""
/// @DnDArgument : "var" "obj_player.coins"
draw_text(x + 32, y + -16, string("x ") + string(obj_player.coins));