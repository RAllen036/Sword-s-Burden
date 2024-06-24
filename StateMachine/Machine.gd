class_name StateMachine
extends Node

@export var current_state: BaseState = null
@export var suffix: String = ""

var states: Dictionary = {}

func _ready() -> void:
	assert(current_state is BaseState, "Starting state is nil.")
	assert(not suffix.is_empty(), "Suffix is empty.")
	for state in get_children():
		if not state is BaseState:
			continue
		state = state as BaseState
		states[state.name] = state
		state.player_ref = get_parent()
		state.transition.connect(transition)
		if state.name.contains("Idle"):
			current_state = state as BaseState

func transition(new_state: String) -> void:
	current_state = states[new_state + suffix]
	current_state.enter()

func _process(delta: float) -> void:
	current_state.update(delta)

func _physics_process(delta: float) -> void:
	current_state.physics_update(delta)
