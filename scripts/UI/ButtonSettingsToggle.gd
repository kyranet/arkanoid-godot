extends Button

const MAIN_MENU = "res://scenes/menu.tscn";

var in_menu = true;

@onready var canvas_layer = get_parent().get_parent().get_parent();

# Toggles the Settings
func _on_button_up():
	in_menu = !canvas_layer.find_child("MainMenu").visible;
	canvas_layer.find_child("MainMenu").visible = in_menu;
	canvas_layer.find_child("Settings").visible = !in_menu;

# Returns from the depths of the unknown
func _on_secret_escape():
	get_tree().change_scene_to_file(MAIN_MENU);
	
