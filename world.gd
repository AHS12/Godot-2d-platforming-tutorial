extends Node2D

class_name  WorldManager

signal toggle_game_paused(is_paused:bool)

var is_game_paused : bool = false:
	get:
		return is_game_paused
	set(value): 
		is_game_paused = value
		get_tree().paused = is_game_paused
		emit_signal("toggle_game_paused", value)

func _input(event: InputEvent):
	if(event.is_action_pressed("Pause")):
		is_game_paused = !is_game_paused
	
