extends BaseState

@export_range(1.0, 20.0, 1.0, "or_greater") var speed: float = 20.0

func physics_update(_delta: float) -> void:
	var direction: Vector2 = Input.get_vector("Left", "Right", "Up", "Down").normalized()
	if direction:
		if not Input.is_action_pressed("Sprint"):
			transition.emit("Walking")
	elif is_zero_approx(player_ref.velocity.length()):
		transition.emit("Idle")
	
	player_ref.velocity = direction * speed
	player_ref.move_and_slide()
