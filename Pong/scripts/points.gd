class_name PointManager

extends Node

var one_score : int
var two_score : int

@onready var winning_one : Winning_Zone = $Winning_Zone
@onready var winning_two : Winning_Zone = $Winning_Zone2

signal player_scored

func reset_score() -> void:
	one_score = 0
	two_score = 0

func _ready() -> void:
	winning_one.connect("ballEntered", add_point)
	winning_two.connect("ballEntered", add_point)

func add_point(player : Selection.PlayerEnum):
	match player:
		Selection.PlayerEnum.ONE:
			one_score += 1
		Selection.PlayerEnum.TWO:
			two_score += 1
		
