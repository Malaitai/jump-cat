extends Area2D

func _process(delta): # delta is the distance between the current frame and the previous frame
	position.x -= 500 * delta


func _on_VisibilityNotifier2D_screen_exited(): # when the obstacle leaves the screen (level screen)
	queue_free()


func _on_Obstacle_body_shape_entered(body_rid, body, body_shape_index, local_shape_index): # end game when the obstacle collides with the player
	get_tree().quit()
