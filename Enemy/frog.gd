extends CharacterBody2D

var SPEED = 100
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var player
var chase = false

func _physics_process(delta):
	velocity.y += gravity * delta
	if chase == true:
		get_node("AnimatedSprite2D").play("Jump")
		player = get_node("../../Player/Player")
		var direction = (player.position - self.position).normalized()
		print(str(player.global_position),direction)
		if direction.x > 0:
			get_node("AnimatedSprite2D").flip_h = true
			print("Right")
		else:
			print("Left")
			get_node("AnimatedSprite2D").flip_h = false
		velocity.x = direction.x * SPEED
	else:
		get_node("AnimatedSprite2D").play("Idle")
		velocity.x = 0
	move_and_slide()

func _on_player_detection_body_entered(body):
	if body.name == "Player":
		print("Player Detected")
		chase = true
		


func _on_player_detection_body_exited(body):
	if body.name == "Player":
		print("Player Detected")
		chase = false
