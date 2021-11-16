extends Control

func _ready():
	if Global.score_time > Global.high_score:
		Global.high_score = Global.score_time
		
	$Label.text = "High Score: " + str(Global.high_score)
	
func _process(delta):
	if Input.is_action_just_pressed("jump"):
		get_tree().change_scene("res://Level/Level.tscn")
