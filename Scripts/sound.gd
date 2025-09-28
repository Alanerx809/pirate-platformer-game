extends AudioStreamPlayer

@onready var coin_sfx: AudioStreamPlayer = $CoinSFX

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Events.on_coin_collect.connect(coin_collected)   # with function body.


func coin_collected():
	coin_sfx.play()
