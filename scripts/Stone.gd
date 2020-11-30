extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):

func _on_Stone_mouse_entered():
	print("Mouse Entered")
	$Sprite.modulate = Color(1, 1, 1)


func _on_Stone_mouse_exited():
	print("Mouse Exited")
	$Sprite.modulate = Color(0.85098, 0.796078, 0.796078)
