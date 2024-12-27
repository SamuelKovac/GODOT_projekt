extends Node2D

var icon  # Premenná pre uloženie obrázka

func _ready() -> void:
	# Načítanie obrázka pri načítaní scény
	icon = load("res://sprites/icon.svg")

func _on_play_button_pressed() -> void:
	# Zmena scény na lvl_1.tscn
	get_tree().change_scene_to_file("res://lvl_1.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()
