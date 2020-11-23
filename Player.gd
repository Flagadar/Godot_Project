extends KinematicBody2D

var motionSpeed = 150

func _ready():
	pass

func _physics_process(delta):
	
	var motion = Vector2()
	
	motion.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	motion.y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	
	motion = motion.normalized() * motionSpeed
	
	move_and_slide(motion)

