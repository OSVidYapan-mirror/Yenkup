extends CharacterBody2D
@export var speed = 200
func _physics_process(_delta):
	var direction=($"../Yenküp".position-position).normalized()
	velocity=direction * speed
	look_at($"../Yenküp".position)
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("c4"):
		$".".position = Vector2(0,0)
