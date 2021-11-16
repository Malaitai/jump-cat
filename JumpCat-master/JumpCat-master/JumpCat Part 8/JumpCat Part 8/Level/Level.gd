extends Node

const OBSTACLE = preload("res://Obstacles/Obstacle.tscn")

func _ready():
	Global.score_time = 0

func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)

func _process(delta):
	$Label.text = "Score:" + str(Global.score_time)

func _on_ScoreTimer_timeout():
	Global.score_time += 1
