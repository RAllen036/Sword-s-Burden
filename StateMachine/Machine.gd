class_name StateMachine
extends Node

@export var current_state: BaseState = null

var states: Dictionary = {}

func _ready() -> void:
	for state in get_children():
		if not state is BaseState:
			continue
		state = state as BaseState
		states[state.name] = state
		state.transition.connect(transition)
		if state.name.contains("Idle") and not current_state is BaseState:
			current_state = state
		

func transition(new_state: BaseState) -> void:
	if not new_state is BaseState:
		return
	
	current_state = new_state
	current_state.enter()

func _process(delta: float) -> void:
	current_state.update(delta)

func _physics_process(delta: float) -> void:
	current_state.physics_update(delta)
