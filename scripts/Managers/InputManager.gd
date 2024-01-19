class_name InputManager
extends Node

const LEFT = "left";
const RIGHT = "right";

# NOTE: Perhaps we could instead use signals for getting the methods called?
@onready var paddle: Paddle = get_tree().current_scene.find_child("Paddle");

func _input(event):
	if event is InputEventKey and event.is_pressed():
		if event.is_action_pressed(LEFT):
			paddle.move_left();
		elif event.is_action_pressed(RIGHT):
			paddle.move_right();
		else:
			match event.keycode:
				KEY_ESCAPE or KEY_SPACE:
					# pause the game
					pass
