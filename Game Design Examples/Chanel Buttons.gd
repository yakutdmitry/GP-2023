extends GridContainer


func _on_mater_button_down():
	$"../Master Sliders FX".visible = false
	$"../Vocal sliders FX".visible = true
	$Mater.visible = false
	$Vocals.visible = true



func _on_vocals_button_down():
	$"../Vocal sliders FX".visible = false
	$"../Drums".visible = true
	$Vocals.visible = false
	$Drums.visible = true
	


func _on_drums_button_down():
	$"../Drums".visible = false
	$"../Bass".visible = true
	$Drums.visible = false
	$Bass.visible = true

func _on_bass_button_down():
	$"../Bass".visible = false
	$"../G1".visible = true
	$Bass.visible = false
	$G1.visible = true


func _on_g_1_button_down():
	$"../G1".visible = false
	$"../G2".visible = true
	$G1.visible = false
	$G2.visible = true



func _on_g_2_button_down():
	$"../G2".visible = false
	$"../Master Sliders FX".visible = true
	$G2.visible = false
	$Mater.visible = true
	


