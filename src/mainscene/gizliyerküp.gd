extends CharacterBody3D
@export var speed = 0.7

func _physics_process(_delta):
	velocity.y = 0
	if not $"../Yenküp" == null:
		var direction=($"../Yenküp".position-position)
		velocity=direction * speed
		look_at($"../Yenküp".position)
		move_and_slide()
func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group("c4"):
		self.position = Vector3(randi_range(-48,48), (0), randi_range(-48,48))
	if area.name == "Kardeş":
		$"../Yüzey/UI/SonPencere".show()
		$"../Yüzey/UI/SonPencere/MultuSon".show()
		$"../Yenküp".queue_free()
