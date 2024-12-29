extends Node

var coins = 0
var score = 0

func _process(_delta: float) -> void:
	$"GUI/coins".text = str(coins)
	$"GUI/score".text = str(score)
