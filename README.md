# clock-Processing
This code displays a clock using the computer clock

# Classes
The Circle object  manages the clock tray
the Hand object  contains the class that manages the hands of the clock.
The clock.pde is the main file. It contains the main setup() and draw() functions and objects

# Customization
Do you need to customize the clock design?
Here is an example to change the seconds hand color to a red one.

**void showSecond(){
  H1 = new Hand(-100, 1,  255, 0, 0);
  H1.move(360/ 60 * second());
}**

The program background or size can be changed in the setup() function
