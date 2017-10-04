# clock-Processing
This code displays a clock using the computer clock

# Classes
The circles.pde file contains the class that manages the clock tray
the hand.pde file contains the class that manages the hands of the clock.
The clock.pde is the main file. It contains the main setup() and draw() functions. Objects are instanciated there.

# Customization
Do you need to customize the clock design?
Here is an example to change the seconds hand color to a red one.

**void showSecond(){
  H1 = new Hand(-100, 1,  255, 0, 0);
  H1.move(360/ 60 * second());
}**

The program background or size can be changed in the setup() function

# Sound
You can desactivate the sound of the clock by commenting the sound librabry **import processing.sound.*;
SoundFile file;**  and the sound object **import processing.sound.*;
SoundFile file;**

