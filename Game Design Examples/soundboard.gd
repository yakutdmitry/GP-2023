extends Node2D

 #volumes

func _on_v_slider_2_value_changed(value):
	AudioServer.set_bus_volume_db(1, linear_to_db(value))

func _on_v_slider_3_value_changed(value):
	AudioServer.set_bus_volume_db(2, linear_to_db(value))
	
func _on_v_slider_4_value_changed(value):
	AudioServer.set_bus_volume_db(3, linear_to_db(value))

func _on_v_slider_5_value_changed(value):
	AudioServer.set_bus_volume_db(4, linear_to_db(value))

func _on_v_slider_6_value_changed(value):
	AudioServer.set_bus_volume_db(5, linear_to_db(value))

#Mutes


func _on_button_button_down():
	AudioServer.set_bus_mute(0, !AudioServer.is_bus_mute(0))

		


func _on_h_slider_4_value_changed(value):
	var pitch:AudioEffectPitchShift = AudioServer.get_bus_effect(0, 1)
	
	pitch.pitch_scale = value
