extends Area2D


const GOLD = 10

func _on_body_entered(body):
	if body.name == "Player":
		Game.gold += GOLD
		var tween =  get_tree().create_tween()
		var tween1 = get_tree().create_tween()
		tween.tween_property(self,"position",position- Vector2(0,35), 0.35)
		tween1.tween_property(self,"modulate",0,0.3)
		tween.tween_callback(queue_free)
		
		
