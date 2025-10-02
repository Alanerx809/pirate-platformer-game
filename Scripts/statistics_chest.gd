extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node) -> void:
	if body.name == "Player":
		# znajdź LevelTimer w głównej scenie (Level1)
		animated_sprite_2d.play("unlock")
		var level1 = get_tree().current_scene
		var timer_node = level1.get_node("LevelTimer")
		if timer_node:
			timer_node.stop_timer()
		# przechodzimy do EndScreen
		get_tree().change_scene_to_file("res://Scenes/level_1_end_screen.tscn")
