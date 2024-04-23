extends GridContainer

var FXslider = preload("res://fx.tscn")

var distance = 0
var busID = 0
var effectID = 0
var Effects = ["Reverb", "PitchShifter", "Phazer", "Amplify"]
var effectVar = ["room_size", "pitch_scale", "range_max_hz", "volume_db"]

func _ready():
	for i in range(4):
		print(i)
		_inst(Vector2(0, distance), busID, Effects[i], effectID, effectVar[i])
		busID = i
		effectID = i
		distance += 25
		
func _inst(pos, FXbusIndex, FXname, effectID, effectVar):
	var instance = FXslider.instantiate()
	add_child(instance)
	instance.position = pos 
	instance.get_child(0).bus = FXbusIndex
	instance.get_child(0).FXVarName = FXname
	instance.get_child(0).effectID = effectID
	instance.get_child(0).effectVar = effectVar
