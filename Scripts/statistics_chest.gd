extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D




func _on_body_entered(body: Node2D) -> void:
	Events.emit_signal("stats")
	animated_sprite_2d.play("unlock")
	
