extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -400
var velocity = Vector2.ZERO # (0,0)

# INBUILT FUNCTIONS FOR GODOT
# _ready() - gets called when the node is loaded
# _process() - gets called on every frame of the game

func _process(delta):
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor(): # when the user presses the UP button AND is_on_floor, do the following
		velocity.y = JUMP_SPEED
	
	move_and_slide(velocity, Vector2.UP) # linear velocity in one direction, direction (pointing up in this case)
	
