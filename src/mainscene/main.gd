extends Node3D
var conf = ConfigFile.new()
#Ilk başlatım
func _ready():
#Config yükleemesi
	conf.set_value("Yenküp","Renk", Color(1,1,0))
	conf.set_value("Gökyüzü","Renk", Color(0.5,0.7,1))
	conf.load("user://Yenküp.conf")
	$Yenküp/MeshInstance3D.mesh.material.albedo_color = conf.get_value("Yenküp","Renk")
	$"Yüzey/WorldEnvironment".environment.background_color = conf.get_value("Gökyüzü","Renk")
#Rasgeleme
	$Yenküp.position=Vector3(randi_range(-55,55), (0), randi_range(-49,49))
	$Yenküp.rotate_y(randi_range(0, 1))
	$C41.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$C42.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$C43.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$C44.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$C45.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$GizliYerküp.position=Vector3(randi_range(-55,55), (0), randi_range(-55,55))
	$Kutu1.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$Kutu2.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$Kutu3.position=Vector3(randi_range(-55,55), (-0.99), randi_range(-55,55))
	$Yüzey/Ağaç1.position=Vector3(randf_range(-0.5,0.5), (0.05), randf_range(-0.5,0.5))
	$Yüzey/Ağaç2.position=Vector3(randf_range(-0.5,0.5), (0.05), randf_range(-0.5,0.5))
	$Yüzey/Ağaç3.position=Vector3(randf_range(-0.5,0.5), (0.05), randf_range(-0.5,0.5))
	$Yüzey/Ağaç4.position=Vector3(randf_range(-0.5,0.5), (0.05), randf_range(-0.5,0.5))
	$Yüzey/Ağaç5.position=Vector3(randf_range(-0.5,0.5), (0.05), randf_range(-0.5,0.5))
#Kolay Mod???
	if not $C46 == null:
		$C46.position=Vector3(randi_range(-49,49), (-0.99), randi_range(-49,49))
		$C47.position=Vector3(randi_range(-49,49), (-0.99), randi_range(-49,49))
		$Kutu4.position=Vector3(randi_range(-49,49), (-0.99), randi_range(-49,49))
#Hava durumları
	if $"Yüzey/WorldEnvironment".environment.background_color == Color(0.2,0.4,0.5):
		$"Yüzey/WorldEnvironment/DirectionalLight3D".light_energy = 1.5
	if $"Yüzey/WorldEnvironment".environment.background_color == Color(0.7,0.7,0.7):
		$"Yüzey/WorldEnvironment/DirectionalLight3D".light_energy = 1
	if $"Yüzey/WorldEnvironment".environment.background_color == Color(0,0.05,0.2):
		$"Yüzey/WorldEnvironment/DirectionalLight3D".light_energy = 0.3
func _physics_process(delta: float):
	$Path3D/PathFollow3D.progress += 200 * delta
	if not $Path3D2/PathFollow3D == null:
		$Path3D2/PathFollow3D.progress += 75 * delta
	$Yüzey/UI/Skor.text = str(Yenküp.score)
	if Yenküp.score > 49:
#Hikaye modu?
		if not $Kardeş == null:
			$Yüzey/UI/SonPencere.show()
			$Yüzey/UI/SonPencere/RekorSon.show()
