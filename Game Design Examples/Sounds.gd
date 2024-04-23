extends GridContainer

var button = preload("res://Launch.tscn")
var sounds = []
var text = []
var w_dist = 0
var h_dist = 0
var new_w_dist = 0
var new_h_dist = 0
func _ready():
	for i in range(6):
		_inst(Vector2(new_w_dist, new_h_dist), sounds[i], text[i])

		
func _inst(pos, sound, BN):
	var instance = button.instantiate()
	instance.position = pos
	instance.get_child(0).sound = sound
	instance.get_child(0).button_name = BN

func _on_hat_button_down():
	$"../../Sounds/Hihat".play()

func _on_kick_button_down():
	$"../../Sounds/kick".play()

func _on_snare_button_down():
	$"../../Sounds/snare".play()

func _on_tom_button_down():
	$"../../Sounds/Tom".play()

func _on_crash_button_down():
	$"../../Sounds/Crash".play()

func _on_clap_button_down():
	$"../../Sounds/Clap".play()
