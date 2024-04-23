extends HSlider

var bus = 0
var FXVarName = []
var effectID = 0
var effectVar = []


func _on_value_changed(value):
	var FXVarName:AudioEffect = AudioServer.get_bus_effect(bus, effectID)
	FXVarName.effectVar * value
