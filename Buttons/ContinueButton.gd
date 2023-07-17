extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	if Utils.checkSaveGameExists() == true:
		grab_focus()

