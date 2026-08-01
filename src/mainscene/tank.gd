extends CharacterBody3D
func _process(_delta) -> void:
	rotate_y(0.0125)
@onready var Mermi = load("res://scene/Mermi.tscn")
func _on_timer_timeout() -> void:
	var Mermi = Mermi.instantiate()
	Mermi.global_position=$".".global_position
	Mermi.transform.basis=$RayCast3D.global_transform.basis
	get_parent().add_child.call_deferred(Mermi)
