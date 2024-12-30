extends Area2D
var required_coins = 10
func _on_body_entered(body: Node2D) -> void:
	
	if body.is_in_group("Player"):
		
		if GameManager.coins >= required_coins:
			GameManager.coins = 0 
			var current_scene_file = get_tree().current_scene.scene_file_path
			var next_level_number = current_scene_file.to_int() + 1

			var next_lvl_path = "res://lvl_" + str(next_level_number) + ".tscn"

			call_deferred("_change_scene", next_lvl_path)

func _change_scene(next_lvl_path: String) -> void:
	get_tree().change_scene_to_file(next_lvl_path)

	  
