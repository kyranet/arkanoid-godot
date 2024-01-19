extends Node

const FILE_NAME = "user://data"

@onready var player: Player = _load_player()

func get_player() -> Player:
	return player

func _load_player() -> Player:
	if ResourceLoader.exists(FILE_NAME):
		var saved = ResourceLoader.load(FILE_NAME)
		if saved is Player:
			return saved
		else:
			printerr("Corrupted player save file");

	return Player.new()
