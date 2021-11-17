extends Area2D

func _process(delta): # delta is the distance between the current frame and the previous frame
	position.x -= 500 * delta
