extends Button


var soundID = 0 

func _ready():
	#$"..".get_child(0).text = button_name[soundID]
	print(soundID)
	
func _on_button_down():
	$"../Sounds".get_child(soundID).play()
	print(soundID)
