extends RigidBody2D

@export var speed : float

func _ready() -> void:
	apply_central_force(Vector2(50000,0))

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Paddle"):
		print("linear_velocity")
		return
	
	
	print(linear_velocity)
	apply_central_force(Vector2(100,1))
