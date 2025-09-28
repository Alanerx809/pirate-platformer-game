extends CanvasLayer

var coins :int = 0


@onready var score: Label = $score
@onready var stats: CanvasLayer = $"."
@onready var timer: Timer = $Timer





# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Events.on_coin_collect.connect(coin_collected)
	Events.stats.connect(Stats)
	score.text = str(coins)+"/??"
	
func coin_collected():
	coins += 1
	score.text = str(coins)+"/??"

func Stats():
	stats.visible = true
	timer.start()
	stats.visible = false
