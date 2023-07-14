extends Node2D

var cherry = preload("res://Collectibles/cherry.tscn")


func _on_timer_timeout():
	var cherryTmp = cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var randInt =  rng.randi_range(10,1500)
	cherryTmp.position = Vector2(randInt,0)
	add_child(cherryTmp)
