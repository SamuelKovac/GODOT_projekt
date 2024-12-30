extends Node

var coins = 0
var score = 0

func _process(_delta: float) -> void:
	$"GUI/coins".text = str(coins) + "/10"
	$"GUI/score".text = str(score)

	var coin_label = $"GUI/coins"
	if coins < 10:
		coin_label.modulate = Color(1, 0, 0)
	else:
		coin_label.modulate = Color(0, 1, 0)
