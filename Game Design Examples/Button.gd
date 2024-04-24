extends Button

var button_name = []
var sound = "$Sounds/Hihat"
var pl = sound[0]
func _ready():
	#$".".text = button_name
	pass
func _on_button_down():
	$"../Sounds".get_child(0).play()
