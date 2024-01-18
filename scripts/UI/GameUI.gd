extends Node

@export var high_score: int = 0
@export var score: int = 0
@export var level: int = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.get_player().changed.connect(_on_player_update)
	pass # Replace with function body.
	
func _on_player_update():
	pass
