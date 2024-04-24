extends GridContainer

var button = preload("res://Launch.tscn")
var sounds = [$"../../Sounds/Hihat"]
var button_name = ["hat", "kick", "snr", "tom", "crs", "clap"]
var w_dist = [0, 36, 76, 0, 42, 75]
func _ready():
	for i in range(6):
		if i < 3:
			_inst(Vector2(w_dist[i], 0), i, button_name[i])
			
		if i == 3:
			_inst(Vector2(w_dist[i], 35), i, button_name[i])
		if i > 3:
			_inst(Vector2(w_dist[i], 35), i, button_name[i])
			
			
func _inst(pos, ID, textID):
	var instance = button.instantiate()
	instance.position = pos
	add_child(instance)
	instance.get_child(0).soundID = ID
	instance.get_child(0).text = textID

#func _on_hat_button_down():
	#$"../../Sounds/Hihat".play()
#
#func _on_kick_button_down():
	#$"../../Sounds/kick".play()
#
#func _on_snare_button_down():
	#$"../../Sounds/snare".play()
#
#func _on_tom_button_down():
	#$"../../Sounds/Tom".play()
#
#func _on_crash_button_down():
	#$"../../Sounds/Crash".play()
#
#func _on_clap_button_down():
	#$"../../Sounds/Clap".play()
