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
	AudioServer.set_bus_mute(1, !AudioServer.is_bus_mute(1))


func _on_button_2_button_down():
	AudioServer.set_bus_mute(2, !AudioServer.is_bus_mute(2))
	
func _on_button_3_button_down():
	AudioServer.set_bus_mute(3, !AudioServer.is_bus_mute(3))

func _on_button_4_button_down():
	AudioServer.set_bus_mute(4, !AudioServer.is_bus_mute(4))
	
func _on_button_5_button_down():
	AudioServer.set_bus_mute(5, !AudioServer.is_bus_mute(5))	
#Effects

func _on_h_slider_4_value_changed(value): #pitch Shifter
	var pitch:AudioEffectPitchShift = AudioServer.get_bus_effect(0, 1)
	
	pitch.pitch_scale = value


func _on_h_slider_2_value_changed(value): #reverb
	var reverb:AudioEffect = AudioServer.get_bus_effect(0, 0)
	
	reverb.room_size = value


func _on_h_slider_3_value_changed(value): #phazer
	var phazer:AudioEffect = AudioServer.get_bus_effect(0, 2)
	
	phazer.range_max_hz = value


func _on_h_slider_value_changed(value): #Amplify
	var Amplify:AudioEffect = AudioServer.get_bus_effect(0, 3)
	
	Amplify.volume_db = value

