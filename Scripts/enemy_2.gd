extends Node2D


const SPEED = 110
const X = 4

var d
var direction = -1



@onready var raycast_right: RayCast2D = $Raycast_right
@onready var raycast_left: RayCast2D = $Raycast_left
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = true
	position.x += direction * SPEED  * delta 
