extends Button

var button_name = []
var sound = []

func _ready():
	text = button_name

func _on_button_down():
	sound.play()
