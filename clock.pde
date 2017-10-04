import processing.sound.*;
SoundFile file;

Hand H1, H2, H3; // Call the class hand

Circle C1, C2;//Call of the class circle

void setup(){
  size(600,600);
  background(100);
  C1 = new Circle(0, 0, 2, 255,  10, 255);
  C2 = new Circle(0, 0, 3, 0, 250, 150);

  file = new SoundFile(this, "ticking.mp3");
  //Sound
  //file.play();
  //file.loop();
  file.amp(0.2);
  println(file.duration());


}

void draw(){
  background(255);
  translate(width/2, height/2);
  C2.display();
  showSecond();
  showMinute();
  showHour();
  C1.display();

}

//second
void showSecond(){
  H1 = new Hand(-100, 1,  150, 150, 150);
  H1.move(360/ 60 * second());
}

//Minute
void showMinute(){
  H2 = new Hand(-95, 2,  150, 150, 150);
  H2.move(360/ 60 * minute());
}

//Hour
void showHour(){
  H3 = new Hand(-80, 3, 150, 150, 150);
  H3.move(360 / 12 * hour());
}
