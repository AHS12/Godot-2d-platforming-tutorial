extends Node

const SAVE_PATH = "res://savegame.bin"

func saveGame():
	var file = FileAccess.open(SAVE_PATH,FileAccess.WRITE)
	var data: Dictionary = {
		"playerHP": Game.playerHP,
		"gold": Game.gold
	}
	var jsonStr = JSON.stringify(data)
	file.store_line(jsonStr)

func loadGame():
	var file = FileAccess.open(SAVE_PATH,FileAccess.READ)
	if FileAccess.file_exists(SAVE_PATH) == true:
		if not file.eof_reached():
			var currentLine = JSON.parse_string(file.get_line())
			if currentLine:
				Game.playerHP = currentLine["playerHP"]
				Game.gold = currentLine["gold"]
				

func newGame():
	var file = FileAccess.open(SAVE_PATH,FileAccess.WRITE)
	var data: Dictionary = {
		"playerHP": 100,
		"gold": 0
	}
	var jsonStr = JSON.stringify(data)
	file.store_line(jsonStr)
	
func checkSaveGameExists():
	var file = FileAccess.open(SAVE_PATH,FileAccess.READ)
	return FileAccess.file_exists(SAVE_PATH) == true
	
