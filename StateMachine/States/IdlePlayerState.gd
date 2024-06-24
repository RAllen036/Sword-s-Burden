extends BaseState

func update(_delta: float) -> void:
	pass

func physics_update(_delta: float) -> void:
	if Input.get_vector("Left", "Right", "Up", "Down"):
		if Input.is_action_pressed("Sprint"):
			transition.emit("Running")
		else:
			transition.emit("Walking")
