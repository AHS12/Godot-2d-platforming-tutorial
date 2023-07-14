extends Control

@export var world_manager:WorldManager

# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	world_manager.connect("toggle_game_paused", _on_world_manager_toggle_game_paused)


func _on_world_manager_toggle_game_paused(is_paused):
	if is_paused:
		show()
	else:
		hide()

func _on_resume_game_pressed():
	hide()
	world_manager.is_game_paused = false


func _on_save_button_pressed():
	Utils.saveGame()
	hide()
	world_manager.is_game_paused = false

func _on_quit_desktop_pressed():
	get_tree().quit()
