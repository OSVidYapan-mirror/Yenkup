extends Node2D
var conf = ConfigFile.new()
func _ready() -> void:
	conf.set_value("Yenküp","Renk", Color(1,1,0))
	conf.load("user://Yenküp.conf")
	$"Yenküp/Renk".color = conf.get_value("Yenküp","Renk")
	$C4.position = Vector2(randi_range(50,4950),randi_range(50,2950))
	$C42.position = Vector2(randi_range(50,4950),randi_range(50,2950))
	$C43.position = Vector2(randi_range(50,4950),randi_range(50,2950))
	$"TuglaDuvar/Ağaç".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"TuglaDuvar/Ağaç2".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"TuglaDuvar/Ağaç3".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"GizliYerküp".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	$"Yenküp".position = Vector2(randi_range(100,4900),randi_range(0,2900))
	if $"GizliYerküp/CollisionShape2D2" == null:
		$"Yenküp".rotate(randf_range(-90,90))

func _process(delta: float) -> void:
	$Path2D/PathFollow2D.progress += 5000 * delta
	$"DönerDiken".rotation += PI * delta
	$Yüzey/UI/Skor.text = str(Yenküp.score)
