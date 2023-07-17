extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Utils.checkSaveGameExists() == false:
		get_node("Panel/VBoxContainer/ContinueButton").disabled = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func _on_quit_button_pressed():
	get_tree().quit()


func _on_play_button_pressed():
	Utils.newGame()
	get_tree().change_scene_to_file("res://world.tscn")


func _on_continue_button_pressed():
	Utils.loadGame()
	get_tree().change_scene_to_file("res://world.tscn")
