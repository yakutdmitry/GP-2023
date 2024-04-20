extends GridContainer

func _on_h_slider_4_value_changed(value): #pitch Shifter
	var pitch:AudioEffectPitchShift = AudioServer.get_bus_effect(1, 1)
	
	pitch.pitch_scale = value


func _on_h_slider_2_value_changed(value): #reverb
	var reverb:AudioEffect = AudioServer.get_bus_effect(1, 0)
	
	reverb.room_size = value


func _on_h_slider_3_value_changed(value): #phazer
	var phazer:AudioEffect = AudioServer.get_bus_effect(1, 2)
	
	phazer.range_max_hz = value


func _on_h_slider_value_changed(value): # Amplify
	var Amplify:AudioEffect = AudioServer.get_bus_effect(1, 3)
	
	Amplify.volume_db = value
