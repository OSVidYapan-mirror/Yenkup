extends Node2D

func _ready() -> void:
	$C4.position = Vector2(randi_range(50,4950),randi_range(50,2950))
	$C42.position = Vector2(randi_range(50,4950),randi_range(50,2950))
	$C43.position = Vector2(randi_range(50,4950),randi_range(50,2950))
	$"TuglaDuvar/Ağaç".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"TuglaDuvar/Ağaç2".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"TuglaDuvar/Ağaç3".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"GizliYerküp".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"Yenküp".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"Yenküp".rotate(randf_range(-90,90))

func _process(delta: float) -> void:
	$Path2D/PathFollow2D.progress += 5000 * delta
	$"DönerDiken".rotation += PI * delta
	$Yüzey/UI/Skor.text = str(Yenküp.score)
