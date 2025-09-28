extends ParallaxBackground

@onready var player: CharacterBody2D = $"../Player"


func _process(delta):
	scroll_offset.x = player.position.xdada
