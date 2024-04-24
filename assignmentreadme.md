# Project Title

Name: Dmitry Yakut

Student Number: C23125246

Class Group: solo

# Description of the project
The basic idea was to make a tool which will let band practice while one of their members is absent. For example if there is no drummer someone can use drum machine to let others practice.
Simple DJ panel which allows you to mute specific track or the whole song, apply effects to tracks and master. Use drum machine.

# Instructions for use

Click buttons, tweak sliders and have fun.

# How it works

Volume slider are generated using instancing a scene where there is a slider with assigned code to it. See screenshot
![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/50b4e072-402d-4bf9-9f60-03abacdd409e) ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/9548a261-50cb-4077-b9be-0e1ad5746a84)


For effects sliders I made a button by clicking on which it will change BUS id in sliders script.

![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/bbc5d34f-8f2c-4f77-8cb6-83bc1d3355a1) ![image](https://github.com/yakutdmitry/GP-2023/assets/159444433/0b1f9a22-ec82-461d-a348-982820c35492)




# List of classes/assets in the project and whether made yourself or modified or if its from a source, please give the reference

All code for assets was made by myself. Multitrack for the song was downloaded from the first link in browser. Drums were splitted into 3 tracks which I had to combine using Audacity. 


# References - Random DJ panel

# What I am most proud of in the assignment Generating buttons and Sliders using Instance and transfering components' between scenes.

# Proposal submitted earlier can go here:

## This is how to markdown text:

This is *emphasis*

This is a bulleted list

- Item
- Item

This is a numbered list

1. Item
1. Item

This is a [hyperlink](http://bryanduggan.org)

# Headings
## Headings
#### Headings
##### Headings

This is code:

```Java
public void render()
{
	ui.noFill();
	ui.stroke(255);
	ui.rect(x, y, width, height);
	ui.textAlign(PApplet.CENTER, PApplet.CENTER);
	ui.text(text, x + width * 0.5f, y + height * 0.5f);
}
```

So is this without specifying the language:

```
public void render()
{
	ui.noFill();
	ui.stroke(255);
	ui.rect(x, y, width, height);
	ui.textAlign(PApplet.CENTER, PApplet.CENTER);
	ui.text(text, x + width * 0.5f, y + height * 0.5f);
}
```

This is an image using a relative URL:

![An image](images/p8.png)

This is an image using an absolute URL:

![A different image](https://bryanduggandotorg.files.wordpress.com/2019/02/infinite-forms-00045.png?w=595&h=&zoom=2)

This is a youtube video:

[![YouTube](http://img.youtube.com/vi/J2kHSSFA4NU/0.jpg)](https://www.youtube.com/watch?v=J2kHSSFA4NU)

This is a table:

| Heading 1 | Heading 2 |
|-----------|-----------|
|Some stuff | Some more stuff in this column |
|Some stuff | Some more stuff in this column |
|Some stuff | Some more stuff in this column |
|Some stuff | Some more stuff in this column |

