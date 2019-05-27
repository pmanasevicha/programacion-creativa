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

  void funcion(int i) {
    noFill();
    noStroke();
    fill(random(255),random(255),random(255));
    //fill(255,255,0); //color amarillo
    ellipse(maximaH*random(width),(minimaH*random(height)),maximaT,minimaT);
    //ellipse(width/2,(height/1.5),(maximaH),minimaH);
  }
void texto(int i){
    fill(0);
    textSize(20);
    //text(fecha,random(width),random(height)); //Linea 1 de texto
  //  text(fecha, 500, 60*i); //BD grande

//  }


}
