class_name Winning_Zone
extends Area2D

@export var player : Selection.PlayerEnum

signal ballEntered(player: Selection.PlayerEnum)

func _on_body_entered(body: Node2D) -> void:
	emit_signal("ballEntered", player)
