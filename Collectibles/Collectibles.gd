extends Node2D

var cherry = preload("res://Collectibles/cherry.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var cherryTmp = cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var randInt =  rng.randi_range(10,1500)
	cherryTmp.position = Vector2(randInt,0)
	add_child(cherryTmp)
