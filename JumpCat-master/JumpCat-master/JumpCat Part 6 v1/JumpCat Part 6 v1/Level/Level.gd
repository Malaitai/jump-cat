extends Node

const OBSTACLE = preload("res://Obstacles/Obstacle.tscn")

func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)
