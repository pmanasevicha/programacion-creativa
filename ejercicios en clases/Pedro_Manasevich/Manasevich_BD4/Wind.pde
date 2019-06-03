class Wind {

  float x, y, speed;

  Wind(float x, float y, float speed){

    this.x = x;
    this.y = y;
    this.speed = speed;

  }

  void vel(float spin){
    speed += spin;
  }

  void spinner(){
    translate(x,y);
    rotate(radians(speed));
    ellipse(0,0,100,50);
  }

  void test(){
    strokeWeight(50);
    stroke(255);
    point(x,y);
  }
}
