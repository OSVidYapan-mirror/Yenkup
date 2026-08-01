extends CanvasLayer
func _on_ev_düğme_released():
	get_tree().change_scene_to_file("res://scene/Lobi.tscn")
	Yenküp.score = -5
func _on_yinele_düğme_released():
	get_tree().reload_current_scene()
	Yenküp.score = -5
func _on_kamera_düğme_released():
	if not $"../../Yenküp"== null:
		if $"../../Yenküp/KameraArka".current:
			$"../../Yenküp/KameraÖn".make_current()
		elif $"../../Yenküp/KameraÖn".current:
			$"../../Yenküp/KameraIlk".make_current()
		else:
			$"../../Yenküp/KameraArka".make_current()
func _on_son_pencere_close_requested():
		get_tree().reload_current_scene()
		Yenküp.score = -5
