extends CharacterBody2D

@export var speed = 150          
@export var jump_force = -300    
@export var gravity = 800         

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta

	# Horizontálny pohyb (na podlahe aj vo vzduchu)
	if Input.is_action_pressed("left"):
		velocity.x = -speed
		$AnimatedSprite2D.flip_h = true
		if is_on_floor():
			$AnimatedSprite2D.play("run")
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		$AnimatedSprite2D.flip_h = false
		if is_on_floor():
			$AnimatedSprite2D.play("run")
	else:
		if is_on_floor():
			velocity.x = 0
			$AnimatedSprite2D.play("idle")

	
	if not is_on_floor():
		if velocity.y < 0:  # Skok
			$AnimatedSprite2D.play("jump")
		elif velocity.y > 0:  # Pád
			$AnimatedSprite2D.play("fall")

	# Skok
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_force
		$AnimatedSprite2D.play("jump")

	# Aplikácia pohybu
	move_and_slide()
