extends Area3D
func _process(delta):
	position += transform.basis * Vector3(0, 0, 10) * delta


func _on_body_entered(body: Node3D):
	if body.is_in_group("tank"):
		pass
	else:
		queue_free()
