extends KinematicBody2D

export var motionSpeed = 150
var target = Vector2()
var velocity = Vector2()
var buffer = 5
var animation_vector = Vector2.ZERO

onready var animationtree = $AnimationTree
onready var animationplayer = $AnimationPlayer

func _input(event):
	if event.is_action("left_click"):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = (target - position).normalized() * motionSpeed
	# rotation = velocity.angle()
	if (target - position).length() > buffer:
		velocity = move_and_slide(velocity)

