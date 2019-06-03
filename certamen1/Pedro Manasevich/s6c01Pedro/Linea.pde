class Linea { //Clase


  // Constructor
  Linea() {}

  void lineas() {
    translate(width / 2, height / 2); //trasladar
    for (float j = 0; j < cantidad; j++) {
      rotate(r); //Rotar
      r += .1;
      //linea 1
      strokeWeight(3);
      stroke(255); //Color de la linea.
      rect(maximaH, maximaH, 100, random(50, 400)); //Linea.


    }
  }
}
