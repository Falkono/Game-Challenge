extends CharacterBody2D

var speed : float = 300

func _physics_process(delta: float) -> void:
	get_input()
	move_and_slide()

func get_input() -> void:
	var input_dir = Input.get_vector("","","up","down")
	velocity = input_dir * speed
