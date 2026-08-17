extends Control
var conf = ConfigFile.new()

func _ready():
	$"YenküpLevha".text == "Yenküpppp"
	print(ProjectSettings.get_setting("application/config/name"))
	print(ProjectSettings.get_setting("application/config/version"))
##Dügmelerin basımı ve etkileri
#Oyna
func _on_oyna_düğme_released():
	$"OynaDüğme/OyunModu".show()
func _on_oyun_modu_close_requested():
	$"OynaDüğme/OyunModu".hide()
func _on_klasik_released():
	get_tree().change_scene_to_file("res://scene/Yenküp.tscn")
func _on_kolay_released():
	get_tree().change_scene_to_file("res://scene/Yenküpkolay.tscn")
func _on_hikaye_released():
	get_tree().change_scene_to_file("res://scene/Yenküphikaye.tscn")
func _on_orjinal_released():
	get_tree().change_scene_to_file("res://scene/Yenküp2d.tscn")
#Öğretici
func _on_öğretici_düğme_released():
	$"ÖğreticiDüğme/ÖğretenPencere".show()
func _on_en_düğme_released():
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/ENDüğme/ENTutorial".show()
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/ENDüğme/ENTutorial".play()
func _on_tr_düğme_released():
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/TRDüğme/TRtutorial".show()
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/TRDüğme/TRtutorial".play()

func _on_öğreten_pencere_close_requested():
	$"ÖğreticiDüğme/ÖğretenPencere".hide()
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/ENDüğme/ENTutorial".stop()
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/ENDüğme/ENTutorial".hide()
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/TRDüğme/TRtutorial".stop()
	$"ÖğreticiDüğme/ÖğretenPencere/ColorRect/Label/TRDüğme/TRtutorial".hide()
#Hikaye
func _on_hikaye_düğme_released():
	$"HikayeDüğme/HikayePencere".show()
func _on_hikaye_pencere_close_requested():
	$"HikayeDüğme/HikayePencere".hide()
	$"HikayeDüğme/HikayePencere/HikayeBaşlat/Hikaye".stop()
	$"HikayeDüğme/HikayePencere/HikayeBaşlat/Hikaye".hide()

func _on_hikaye_başlat_released() -> void:
	$"HikayeDüğme/HikayePencere/HikayeBaşlat/Hikaye".show()
	$"HikayeDüğme/HikayePencere/HikayeBaşlat/Hikaye".play()
#Ayarlar
func _on_ayarlar_düğme_released():
	$"AyarlarDüğme/AyarlarPencere".show()
func _on_ayarlar_close_requested():
	$"AyarlarDüğme/AyarlarPencere".hide()
func _on_kırmızı_released() -> void:
	conf.set_value("Yenküp","Renk", Color(1,0,0)) 
	conf.save("user://Yenküp.conf")
func _on_sarı_released() -> void:
	conf.set_value("Yenküp","Renk", Color(1,1,0)) 
	conf.save("user://Yenküp.conf")
func _on_aqua_released() -> void:
	conf.set_value("Yenküp","Renk", Color(0,1,0.7)) 
	conf.save("user://Yenküp.conf")
func _on_mavi_released() -> void:
	conf.set_value("Yenküp","Renk", Color(0,0,1)) 
	conf.save("user://Yenküp.conf")
func _on_mor_released() -> void:
	conf.set_value("Yenküp","Renk", Color(0.5,0,1)) 
	conf.save("user://Yenküp.conf")
func _on_siyah_released() -> void:
	conf.set_value("Yenküp","Renk", Color(0.2,0.2,0.2)) 
	conf.save("user://Yenküp.conf")
func _on_kahverengi_released() -> void:
	conf.set_value("Yenküp","Renk", Color(0.5,0.3,0)) 
	conf.save("user://Yenküp.conf")
func _on_zeytin_released() -> void:
	conf.set_value("Yenküp","Renk", Color(0.5,0.5,0)) 
	conf.save("user://Yenküp.conf")
func _on_gündüz_released() -> void:
	conf.set_value("Gökyüzü","Renk", Color(0.5,0.7,1))
	conf.save("user://Yenküp.conf")
func _on_akşam_released() -> void:
	conf.set_value("Gökyüzü","Renk", Color(0.2,0.4,0.5))
	conf.save("user://Yenküp.conf")
func _on_gece_released() -> void:
	conf.set_value("Gökyüzü","Renk", Color(0,0.05,0.2))
	conf.save("user://Yenküp.conf")
func _on_bulutlu_released() -> void:
	conf.set_value("Gökyüzü","Renk", Color(0.7,0.7,0.7))
	conf.save("user://Yenküp.conf")
func _on_karanlık_released() -> void:
	conf.set_value("Gökyüzü","Renk", Color(0.2,0.2,0.2))
	conf.save("user://Yenküp.conf")
#Atıf
func _on_atıf_düğme_released():
	$AtıfDüğme/AtıfPencere.show()
func _on_kredit_pencere_close_requested():
	$AtıfDüğme/AtıfPencere.hide()
#Çık
func _on_çık_düğme_released():
	get_tree().quit()
