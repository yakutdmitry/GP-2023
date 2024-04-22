SRY I deleted the original file...

The main idea of this project is that in case music band needs to practioce and they for example don't have a drummer and basist, they can mute all chanels except drums and bass in the song and practioce.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/788f0fc6-269a-4c64-8b07-cc911c3f8149) 

My project itself combines launchpad where user can press buttons in order to make sound and DJ or Mixer panel where user can edit particular part of a sond.

Basic Functions:
1. Individual chanel Mutes
2. Individual chanel Volumes
3. 6 Launchpad Buttons
4. Oveerall mute and Play button
5. Master and Individual track Effects
6. Effects aim switch.

1.Individual Mutes are made using "_On_Button_down" functions with set_bus_mute and bus index.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/2889030a-1f8b-40b0-a203-3c49f20b86b3)


2. Individual chanel Mutes are made using a simple script where "Slider Value Changed" function is called and its value is pasted to linear_to_db function.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/947fa434-abc0-4ef1-92bc-8c0411d563da)

3. As I did not understand how samples are loaded in the "Sequencer" scene I made my launchpad using "Audiostream.play" function combined with "_On_Button_down_function"

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/956bf3e0-4d95-4284-8824-08de9f85cf30) ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/4b24082d-553c-446a-bcc0-b16f953dc15a)

4. Overall (master) mute and Play buttons are also very simple. They are made using master bus "set_bus_mute" function and "Audiostream.play" for play button.


5. This one was tricky. Because originally I was making only master chanel effects I just dublicated Grid containers and wrote lots of hardcode. The best idea I came up with was to make a an array of chanels which will let me edit text of chanel button not to hide the previous one and show the new one.

Next, for loop was created just to check if everything works and right index is assigned to right chanel. Now using the "if" statement I am calling a name of the chanel using its index in the ChanellNames variable. After that chanel name appears on the button. After all of that I can now Use only 1 grid container for 6 chanels and their effects by simply not calling a bus by typing its index, but by using the index of chanel I set up before, so that now I am not switching between different GridContainers but I am telling the slider to switch from one bus to another.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/6cbdbd9d-4a08-412b-af16-9b8fc3eff37e) ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/3f89ff65-67ef-4252-a8a4-3112d9d1a7f4)

6. Effects sliders aim is changed using one single button on which I assign a text label which says which chanel is currently connected to sliders. See previous poing

   ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/b53e7cbc-39ab-4dd6-8242-1b5fa69a57be)

Project is made By Yakut Dmitry TU984/1 
Game programming 1


