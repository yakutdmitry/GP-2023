extends GridContainer
var bus_num = 0
var sliderVol = preload("res://volumes.tscn")
@export var sliderDistance = 0


func _ready():
	for i in range(6):
		_inst(Vector2(sliderDistance, 0))
		sliderDistance += 24
		Vars.BN += i
		print(i)

func _inst(pos):
	var instance = sliderVol.instantiate()
	instance.position = pos
	add_child(instance)
	
