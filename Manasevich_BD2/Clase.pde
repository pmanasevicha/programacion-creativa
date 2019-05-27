class Clase {
  String dia,mes,ano,fecha;
  int maxima, minima;
  float x, y;
  PVector pos, vel;

  Clase(String fecha, int maximaT, int minimaT,int maximaH, int minimaH) {//constructor BD pequeña

    this.fecha = fecha;
    this.maximaT = maximaT;
    this.minimaT = minimaT;
    this.maximaH = maximaH;
    this.minimaH = minimaH;
  }

  void funcion(int i) {
    //noFill();
    fill(255,255,0); //color amarillo
    ellipse(width/2,(height/1.5)-(maximaT*5),maximaT*10,maximaT*10);
  }
/*  void texto(int i){
    fill(0);
    textSize(20);
    text(dia + " " + mes +" " + ano, 500, 60*i+20); //Linea 1 de texto
  //  text(fecha, 500, 60*i); //BD grande

  }
  */

}
