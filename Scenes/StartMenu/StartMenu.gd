class_name StartMenu
extends Control

@onready var start: Button = %Start
@onready var settings: Button = %Settings

@export_file("*.tscn") var world_location: String = ""
@export_file("*.tscn") var settings_location: String = ""

func _ready() -> void:
	assert(not world_location.is_empty(), "World location is not connected to the main scene.")

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file(world_location)

func _on_settings_pressed() -> void:
	var inst_settings: Control = load(settings_location).instantiate()

func _on_quit_pressed() -> void:
	get_tree().quit()
