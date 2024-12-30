extends Area2D

@onready var gcoin_sound: AudioStreamPlayer2D = $gcoin_sound

var is_collected: bool = false

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") and not is_collected:
		is_collected = true
		GameManager.coins += 1
		GameManager.score += 100
		gcoin_sound.play()
		hide()
