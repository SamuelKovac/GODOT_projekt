extends Node

var coins = 0
var score = 0
var total_time_in_sec : int = 0

func _process(_delta: float) -> void:
	var coin_label = $"GUI/coins"
	coin_label.text = str(coins) + "/10"
	if coins < 10:
		coin_label.modulate = Color(1, 0, 0)
	else:
		coin_label.modulate = Color(0, 1, 0)

	$"GUI/score".text = str(score)

func _ready():
	$Timer.start()

func on_timer_timeout():
	var current_scene_file = get_tree().current_scene.scene_file_path
	if(current_scene_file == "res://lvl_0_(hlavné_menu).tscn"):
		total_time_in_sec = 0
		$"GUI/Label".text = "00:00"
	else:
		total_time_in_sec += 1
		var m = int(total_time_in_sec / 60.0)
		var s = total_time_in_sec % 60
		$"GUI/Label".text = '%02d:%02d' % [m, s]
