extends BaseState

@export_range(0.0, 10.0, 1.0, "or_greater") var speed: float = 10.0

func physics_update(_delta: float) -> void:
	var direction: Vector2 = Input.get_vector("Left", "Right", "Up", "Down").normalized()
	
	if Input.is_action_pressed("Sprint"):
		transition.emit("Running")
	
	player_ref.velocity = direction * speed
	player_ref.move_and_slide()
	
	if is_zero_approx(player_ref.velocity.length()):
		transition.emit("Idle")
		return
	
