extends Sprite2D

func _physics_process(_notused):
	
	if Input.is_action_pressed("rotate_right"):
		rotate(-0.05)

	if Input.is_action_pressed("rotate_left"):
		rotate(0.05)
