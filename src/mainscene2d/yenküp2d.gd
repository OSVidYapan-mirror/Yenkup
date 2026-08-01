extends CharacterBody2D
var rotation_direction = 10
var score = 0

func _physics_process(_delta):
	velocity = transform.x * Input.get_axis("ui_down", "ui_up") * 350
	move_and_slide()
	
	if Input.is_action_pressed("rotate_right"):
		rotate(0.05)
	if Input.is_action_pressed("rotate_left"):
		rotate(-0.05)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("düşman") :
		$"../GizliYerküp".queue_free()
		$".".queue_free()
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("düşman") :
		$"../GizliYerküp".queue_free()
		$".".queue_free()
