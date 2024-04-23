SRY I deleted the original file...

The main idea of this project is that in case the music band needs to practice and they for example don't have a drummer and bassist, they can mute all channels except drums and bass in the song and practice.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/788f0fc6-269a-4c64-8b07-cc911c3f8149) 

My project itself combines a launchpad where the user can press buttons in order to make sound and a DJ or Mixer panel where the user can edit a particular part of a song.

Basic Functions:
1. Individual channel Mutes
2. Individual channel Volumes
3. 6 Launchpad Buttons
4. Overall mute and Play button
5. Master and Individual track Effects
6. Effects aim switch.

1.Individual Mutes are made using "_On_Button_down" functions with set_bus_mute and bus index.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/2889030a-1f8b-40b0-a203-3c49f20b86b3)


2. Individual channel Mutes are made using a simple script where "Slider Value Changed" function is called and its value is pasted to linear_to_db function.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/947fa434-abc0-4ef1-92bc-8c0411d563da)

3. As I did not understand how samples are loaded in the "Sequencer" scene I made my launchpad using the "Audiostream.play" function combined with the "_On_Button_down_function"

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/956bf3e0-4d95-4284-8824-08de9f85cf30) ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/4b24082d-553c-446a-bcc0-b16f953dc15a)

4. Overall (master) mute and Play buttons are also very simple. They are made using the master bus "set_bus_mute" function and "Audiostream.play" for the play button.


5. This one was tricky. Because originally I was making only master channel effects I just duplicated Grid containers and wrote lots of hardcode. The best idea I came up with was to make an array of channels that will let me edit the text of the channel button not to hide the previous one and show the new one.

Next, a for loop was created just to check if everything works and if the right index is assigned to the right channel. Now using the "if" statement I am calling the name of the chanel using its index in the ChanellNames variable. After that, the channel name appears on the button. After all of that, I can now Use only 1 grid container for 6 channels and their effects by simply not calling a bus by typing its index, but by using the index of the channel I set up before so that I am not switching between different GridContainers but I am telling the slider to switch from one bus to another.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/6cbdbd9d-4a08-412b-af16-9b8fc3eff37e) ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/3f89ff65-67ef-4252-a8a4-3112d9d1a7f4)

5.1 For Pitch Shifter I referenced the Pitch_scale component the way you have shown us during your lesson.
5.2 For Reverb there were multiple components but only Room_Size would work the way I wanted it to. Also, I had to set other components to custom values so that the reverb sounds suitable for the song I have chosen.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/4f6b647c-9212-44e1-a6d6-a50cb0165f27)

5.3 With Phazer I had the same issue as I had with reverb. I referenced the Range_max_hz component and had to put the Range_min_hz component to 0 from around 440 so that Phazer wasn't active while the slider value was zero. I also tweaked some other components' values to make it sound better. 

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/9fb81dae-7772-4f5d-8d03-09c0f9309c00)

5.4 For Amplify there was only one component whose value I could change so I just referenced Volume_DB. Not to forget, I've noticed that a 0 value for Volume_DB won't make the sound silent. that makes this slider different from the sliders I use to change channels' volume.


6. Effects sliders aim is changed using one single button on which I assign a text label that says which channel is currently connected to sliders. See the previous point

   ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/b53e7cbc-39ab-4dd6-8242-1b5fa69a57be)

The project is made By Yakut Dmitry TU984/1 
Game programming 1


