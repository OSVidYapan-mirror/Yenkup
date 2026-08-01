extends Area3D
func _on_body_entered(body: Node3D) -> void:
	if body.name == "Yenküp":
		Yenküp.score +=1
		self.position = Vector3(randi_range(-50,50), (0), randi_range(-50,50))
	elif body.name == "GizliYerküp":
		self.position = Vector3(randi_range(-50,50), (0), randi_range(-50,50))
	elif body.is_in_group("sınır"):
		self.position = Vector3(randi_range(-50,50), (0), randi_range(-50,50))
