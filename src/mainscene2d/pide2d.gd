extends Area2D
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Yenküp":
		Yenküp.score += 1
		global_position = Vector2(randi_range(250,5000), randi_range(200,3118))
	elif body.name == "GizliYerküp":
		global_position = Vector2(randi_range(250,5000), randi_range(200,3118))
