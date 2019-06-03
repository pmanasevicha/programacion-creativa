class Clase {
  String fecha;
  int maximaT, minimaT,maximaH, minimaH;


  Clase(String fecha, int maximaT, int minimaT,int maximaH, int minimaH) {//constructor BD pequeña

    this.fecha = fecha;
    this.maximaT = maximaT;
    this.minimaT = minimaT;
    this.maximaH = maximaH;
    this.minimaH = minimaH;

  }

  void funcion(int i, int x, int y) {
    noFill();
    noStroke();
    fill(random(255),random(255),random(255));
    //fill(255,255,0); //color amarillo
    ellipse(maximaH++,minimaH++,maximaT,minimaT);
    //ellipse(width/2,(height/1.5),(maximaH),minimaH);
  }
void texto(int i){
    fill(0);
    textSize(20);
    text(fecha,maximaT,minimaT); //Linea 1 de texto
  //  text(fecha, 500, 60*i); //BD grande

  }
void movimiento(int x, int y){

maximaH++;
minimaH++;
maximaT++;
minimaT++;
}

}
