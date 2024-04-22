extends GridContainer
var chanel_num = 0 #index of chanel set to 0 at the beginning
var num_chanels = 5 # used for "for" loop 
var ChanelsNames = ["master", "vocals", "drums", "bass", "G1", "G2"] #text for button

func _ready(): #checking if loop works
	for i in range(len(ChanelsNames)):
		print(i , " " , ChanelsNames[i])
	$Chanel.text = ChanelsNames[0]
	
func _on_chanel_button_down(): 
	if chanel_num == 5:
		chanel_num = 0
	else:
		chanel_num += 1
	$Chanel.text = ChanelsNames[chanel_num] #assing chanel name by calling a list and object's index
	
	#Optimized chanel effects (before it was 6 grid containers with simular code but different numbers for busses
	# now it bus index using chanel_nim
func _on_h_slider_4_value_changed(value): #pitch Shifter
	var pitch:AudioEffectPitchShift = AudioServer.get_bus_effect(chanel_num, 1)
	
	pitch.pitch_scale = value

func _on_h_slider_2_value_changed(value): #reverb
	var reverb:AudioEffect = AudioServer.get_bus_effect(chanel_num, 0)
	
	reverb.room_size = value


func _on_h_slider_3_value_changed(value): #phazer
	var phazer:AudioEffect = AudioServer.get_bus_effect(chanel_num, 2)
	
	phazer.range_max_hz = value


func _on_h_slider_value_changed(value): # Amplify
	var Amplify:AudioEffect = AudioServer.get_bus_effect(chanel_num, 3)
	
	Amplify.volume_db = value
