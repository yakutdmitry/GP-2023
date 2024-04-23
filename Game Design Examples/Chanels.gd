extends GridContainer

var VolSlider = preload("res://volumes.tscn")
var busses = [0,1,2,3,4,5]
var distance = 0



func _ready():
	for i in range(0, 5):
		_inst(Vector2(distance, 0), busses[i])
		distance += 25
		print(busses[i])
func _inst(pos, busIndex):
	var instance = VolSlider.instantiate()
	add_child(instance)
	instance.position = pos
	Volume.bus = busIndex
	
