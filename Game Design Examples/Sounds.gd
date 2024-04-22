extends GridContainer

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
