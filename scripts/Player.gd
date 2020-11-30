extends KinematicBody2D

var motionSpeed = 150
var target = Vector2()
var velocity = Vector2()

func _input(event):
	if event.is_action("left_click"):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = (target - position).normalized() * motionSpeed
	# rotation = velocity.angle()
	if (target - position).length() > 5:
		velocity = move_and_slide(velocity)
