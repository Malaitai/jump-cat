extends KinematicBody2D

const GRAVITY = 10
const SPEED = -400
var velocity = Vector2.ZERO

func _process(delta):
	velocity.y += GRAVITY
#	if Input.is_action_just_pressed("ui_up"):
#		velocity.y = SPEED
	
	move_and_slide(velocity,Vector2.UP)

