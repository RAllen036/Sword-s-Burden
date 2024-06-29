extends Node

@onready var tile_map: TileMap = $TileMap
@onready var player: Player = $Player

@export_dir var saved_worlds_location: String = "":
	set(v):
		# NOTE, Uncomment later to ensure the export var accesses user data and not res data since it can break the game otherwise
		#if v.begins_with("res"):
			#v = v.trim_prefix("res")
			#v = "user" + v
		saved_worlds_location = v


class WorldData:
	var id: int
	var seed: int
	var noise_ref: FastNoiseLite
	

var worlds: Array[WorldData] = []

func _ready() -> void:
	# Load a folder that procedural info is saved to
	pass

func create_world(seed: int) -> void:
	var new_world_data: WorldData
	pass

func save_current_world() -> void:
	pass

func load_world(id: int) -> void:
	pass
