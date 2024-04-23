extends VSlider

@export var bus = 0

func _on_value_changed(value):
	AudioServer.set_bus_volume_db(bus, linear_to_db(value))
	print(bus)
