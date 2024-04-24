extends GridContainer

var button = preload("res://Launch.tscn")
var sounds = [$"../../Sounds/Hihat"]
var text = ["Hat"]
var w_dist = 0
var h_dist = 0
var new_w_dist = 0
var new_h_dist = 0
func _ready():
	for i in range(6):
		if i < 3:
			_inst(Vector2(w_dist,0))
			w_dist += 38
		if i == 3:
			w_dist = 0
			_inst(Vector2(w_dist,35))
		if i > 3:
			w_dist += 38
			_inst(Vector2(w_dist,35))
			
			
func _inst(pos):
	var instance = button.instantiate()
	instance.position = pos
	add_child(instance)
	#instance.get_child(0).sound = sound
	#instance.get_child(0).button_name = BN

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
