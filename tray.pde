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
