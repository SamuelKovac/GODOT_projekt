extends Control

# Tracks whether the game is paused
var is_paused: bool = false

# Called to show the pause menu and pause the game
func pause_game():
	is_paused = true
	get_tree().paused = true
	self.visible = true  # Show the pause menu

# Called to resume the game and hide the pause menu
func resume_game():
	is_paused = false
	get_tree().paused = false
	self.visible = false  # Hide the pause menu

# Toggles the pause state when ESC is pressed
func test_esc():
	if Input.is_action_just_pressed("esc"):
		if is_paused:
			resume_game()
		else:
			pause_game()

# Called when the resume button is pressed
func _on_resume_pressed() -> void:
	resume_game()

# Called when the restart button is pressed
func _on_restart_pressed() -> void:
	resume_game()
	get_tree().reload_current_scene()

# Called when the menu button is pressed
func _on_menu_pressed() -> void:
	resume_game()
	get_tree().change_scene_to_file("res://lvl_0_(hlavné_menu).tscn")

# Called when the quit button is pressed
func _on_quit_pressed() -> void:
	get_tree().quit()

# Ensure the pause menu is hidden when the scene loads
func _ready() -> void:
	self.visible = false  # Hide the pause menu initially

# Checks for ESC key input every frame
func _process(delta: float):
	test_esc()
