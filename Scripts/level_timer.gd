extends Node

var timer: float = 0.0
var running: bool = true

func _process(delta: float) -> void:
	if running:
		timer += delta

func stop_timer() -> void:
	running = false
	Global.level_time = timer
