class Viento {
  //variantes
  float x, y, speed;

 Viento(float x, float y, float speed){

    this.x = x;
    this.y = y;
    this.speed = speed;

  }

  void vel(float spin){
    speed += spin;
  }
  //Dependiendo de cada resultado de la tabla, mantiene la velocidad sitada, mayor escala = mayor velocidad
  void spinner(){
    translate(x,y);
    rotate(radians(speed));
    ellipse(0,0,30,3);
    stroke(255, 255, 255);
  }
  //figura
  void test(){
    strokeWeight(100);
    stroke(255);
    point(x,y);
  }
}
