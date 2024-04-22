extends Node2D


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

#Effects



func _on_play_button_down():
	$Mix/Vocals.play()
	$Mix/Drums.play()
	$Mix/"Rhytm Guitar".play()
	$Mix/"Lead Guitar".play()
	$Mix/Bass.play()

# Chanel mutes

func _on_mute_button_down():
	AudioServer.set_bus_mute(0, !AudioServer.is_bus_mute(0))

func _on_vocals_button_down():
	AudioServer.set_bus_mute(1, !AudioServer.is_bus_mute(1))

func _on_drums_button_down():
	AudioServer.set_bus_mute(2, !AudioServer.is_bus_mute(2))

func _on_bass_button_down():
	AudioServer.set_bus_mute(3, !AudioServer.is_bus_mute(3))
	
func _on_g_1_button_down():
	AudioServer.set_bus_mute(4, !AudioServer.is_bus_mute(4))

func _on_g_2_button_down():
	AudioServer.set_bus_mute(5, !AudioServer.is_bus_mute(5))
