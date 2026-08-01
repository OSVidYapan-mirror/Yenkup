extends CharacterBody3D
var score = -5
func _physics_process(delta):
	var direction := (transform.basis * Vector3(Input.get_vector("N/A", "N/A", "ui_up", "ui_down").x, 0, Input.get_vector("N/A", "N/A", "ui_up", "ui_down").y))
	velocity.y -= 10 * delta
	if Input.is_action_pressed("rotate_right"):
		rotate_y(-0.025)
	if Input.is_action_pressed("rotate_left"):
		rotate_y(0.025)
	if Input.is_action_just_pressed("ui_jump") && is_on_floor():
		velocity.y = 5

	velocity.x = direction.x * 10
	velocity.z = direction.z * 10

	move_and_slide()
		
func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group("düşman"):
		if $"../Kardeş" == null:
			$"../Yüzey/UI/ÖlüMetin".show()
		else:
			$"../Yüzey/UI/SonPencere".show()
			$"../Yüzey/UI/SonPencere/ÜzgünSon".show()
		self.queue_free()
	elif area.name == "Kardeş":
		$"../Yüzey/UI/SonPencere".show()
		$"../Yüzey/UI/SonPencere/MutluSon?".show()
		self.queue_free()
