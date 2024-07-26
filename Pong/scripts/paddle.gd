extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("up"):
		velocity.y = -100
	elif Input.is_action_pressed("down"):
		velocity.y = 100
	else:
		velocity.y = 0
	
	move_and_slide()
