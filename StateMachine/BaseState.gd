class_name  BaseState
extends Node

signal transition(new_state: BaseState)

var player_ref: CharacterBody2D = null

func _ready() -> void:
	pass

func enter() -> void:
	pass

func exit() -> void:
	pass

func update(_delta: float) -> void:
	pass

func physics_update(_delta: float) -> void:
	pass
