extends Node

const THE_CODE = [
	KEY_UP,
	KEY_UP,
	KEY_DOWN,
	KEY_DOWN,
	KEY_LEFT,
	KEY_RIGHT,
	KEY_LEFT,
	KEY_RIGHT,
	KEY_B,
	KEY_A
];

var progress = 0;

func _input(event: InputEvent):
	if event is InputEventKey and event.pressed:
		if event.keycode == THE_CODE[progress]:
			progress += 1;
			if progress >= THE_CODE.size():
				get_tree().change_scene_to_file("res://scenes/konami_code.tscn");
