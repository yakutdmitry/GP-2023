extends GridContainer

var VolSlider = preload("res://volumes.tscn")
var busses = [0,1,2,3,4,5]
var distance = 0



func _ready():
	for i in range(0, 5):
		_inst(Vector2(distance, 0), Vars.busID)
		distance += 25
		#print(Vars.busID)
		Vars.busID += 1
		
func _inst(pos, busIndex):
	var instance = VolSlider.instantiate()
	add_child(instance)
	instance.position = pos
	instance.get_child(0).bus = busIndex
	
	
