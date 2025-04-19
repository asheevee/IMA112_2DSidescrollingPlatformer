/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 78B61459
/// @DnDComment : By using an invisible object that follows the player,$(13_10)but clamps itself to stay above a certain y position,$(13_10)I can have the camera follow that object instead$(13_10)and effectively enforce artificial borders on the camera
/// @DnDInput : 2
/// @DnDArgument : "expr" "obj_player.x"
/// @DnDArgument : "expr_1" "min(obj_player.y, room_height - camera_get_view_border_y(view_camera[0]) - 128)"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = obj_player.x;
y = min(obj_player.y, room_height - camera_get_view_border_y(view_camera[0]) - 128);