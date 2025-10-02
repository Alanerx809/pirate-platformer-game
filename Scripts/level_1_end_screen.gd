extends Node

@onready var label_time: Label = $Label



func _ready() -> void:
	# pokazujemy czas
	label_time.text = "%.2f s" % Global.level_time
	

	# po 3 sekundach automatycznie przechodzimy do Level2
	await get_tree().create_timer(3.0).timeout
	get_tree().change_scene_to_file("res://Scenes/level_2.tscn")
