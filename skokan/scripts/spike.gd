extends Node2D

const Player = preload("res://scenes/player.tscn")

@export var speed = 160.0
var current_speed = 0.0

func _physics_process(delta: float) -> void:
	position.y += current_speed * delta

func fall():
	current_speed = speed
	await get_tree().create_timer(5).timeout
	queue_free()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		GameManager.score -= GameManager.coins * 100
		GameManager.coins = 0
		get_tree().reload_current_scene()


func _on_aktivacia_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		fall()
