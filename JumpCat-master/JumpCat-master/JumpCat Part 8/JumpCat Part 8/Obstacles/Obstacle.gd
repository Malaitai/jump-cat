extends Area2D

var obstacle_list = ["sloth","family","couch","pile","kittens","maru","pizza"]

func _ready():
	randomize()
	var current_obstacle = obstacle_list[randi() % obstacle_list.size()]
	$AnimatedSprite.animation = current_obstacle

func _process(delta):
	position.x -= 500 * delta 


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Obstacle_body_entered(body):
	get_tree().call_group("Player","end_game")
