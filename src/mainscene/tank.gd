extends CharacterBody3D
func _physics_process(_a) -> void:
	rotate_y(0.0125)
@onready var Mermi = load("res://scene/Mermi.tscn")
func _on_timer_timeout() -> void:
	var Mermi = Mermi.instantiate()
	Mermi.global_position=$"Kafa/Burun".global_position
	Mermi.transform.basis=$"Kafa/Burun".global_transform.basis
	get_parent().add_child.call_deferred(Mermi)
	$TankSes.play()
