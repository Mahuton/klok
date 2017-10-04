Hand H1, H2, H3; // Call the class hand

Circle C1, C2;//Call of the class circle

void setup(){
  size(600,600);
  background(100);
  C1 = new Circle(0, 0, 2, 255,  10, 255);
  C2 = new Circle(0, 0, 3, 0, 250, 150);

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

// ==========Objects
class Circle{

  //Data
  public float px;
  public float py;
  public float r;
  public color c;
  public float s;
  public float f;

  //Constructor

  public Circle(float px, float py, float s, float f, float r, color c){
    this.px = px;
    this.py = py;
    this.s = s;
    this.f = f;
    this.r = r;
    this.c = c;

  }

  //Functionnalities
  public void display(){
    stroke(c);
    fill(f);
    strokeWeight(s);
    ellipse(px, py, r, r);

  }
}

// ==== hands object
class Hand{

  //Data
  public float l;
  public float cv1;
  public float cv2;
  public float cv3;
  public color c;
  public float s;


  //Constructor
  public Hand(float l, float s, float cv1, float cv2, float cv3){
    this.l = l;
    this.s = s;
    this.cv1 =cv1;
    this.cv2 = cv2;
    this.cv3 = cv3;
    c =color(cv1, cv2, cv3);

  }

  //Functionalities
  public void move(float a){
    pushMatrix();
    rotate(radians(a));
    stroke(c);
    strokeWeight(s);
    line(0,0,0,l);
    popMatrix();

  }

}
