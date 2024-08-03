extends Node

const MAX_EFFECTS: int = 5

var radios: Array[AudioStreamPlayer]
var effects: Array[AudioStreamPlayer]

func _ready():
	randomize()

func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	pass

# Background music

func play_bgm_from_path(bgm: String) -> void:
	pass

func play_bgm(bgm: AudioStreamWAV) -> void:
	pass

func play_random_bgm(bgms: PackedStringArray) -> void:
	pass

func create_wav_radio(bgm : AudioStreamWAV) -> AudioStreamPlayer:
	return null

func loop_radio() -> void:
	pass

# Sound effects

func create_effect_from_path(effect_path: String) -> void:
	pass

func create_effect(effect: AudioStreamWAV) -> void:
	pass

# Other
