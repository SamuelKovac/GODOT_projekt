extends CharacterBody2D

# Movement parameters
@export var speed = 150           # Horizontal movement speed
@export var jump_force = -300    # Jumping impulse
@export var gravity = 800         # Gravity applied to the character

func _physics_process(delta):
	# Apply gravity
	if not is_on_floor():
		velocity.y += gravity * delta

	# Horizontal movement
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
	else:
		velocity.x = 0

	# Jumping
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = jump_force

	# Move the character
	move_and_slide()
