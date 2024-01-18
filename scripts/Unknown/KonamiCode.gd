extends Node

const THE_CODE = ["ui_up", "ui_up", "ui_down", "ui_down",
"ui_left", "ui_right", "ui_left", "ui_right",
KEY_B, KEY_A, "ui_accept"];

var progress = 0;

func _input(event: InputEvent):
	if event is InputEventKey and event.pressed:
		var current_code = THE_CODE[progress];
		if ((current_code is String and event.is_action_pressed(current_code))
		or (current_code is int and event.keycode == current_code)):
			progress += 1;
			if progress >= THE_CODE.size():
				get_tree().change_scene_to_file("res://scenes/konami_code.tscn");
