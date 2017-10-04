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
