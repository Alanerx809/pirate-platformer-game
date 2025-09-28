extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var timer: Timer = $Timer



func _on_body_entered(body: Node2D) -> void:
	Events.emit_signal("on_coin_collect")
	animated_sprite_2d.play("collect")
	timer.start()



func _on_timer_timeout() -> void:
	queue_free()
