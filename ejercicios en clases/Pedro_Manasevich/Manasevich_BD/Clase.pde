class Clase {
  String dia,mes,ano,fecha;
  int maxima, minima;
  float x, y;
  PVector pos, vel;

  Clase(String dia,String mes,String ano, int maxima, int minima) {//constructor BD pequeña
//Clase(int maxima, int minima, String fecha) {//BD GRANDE
  this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  //  this.fecha = fecha; BD GRANDE
    this.maxima = maxima;
    this.minima = minima;
  }

  void funcion(int i) {
    //noFill();
    fill(255,255,0); //color amarillo
    ellipse(width/2,(height/1.5)-(maxima*5),maxima*10,maxima*10);
  }
  void texto(int i){
    fill(0);
    textSize(20);
    text(dia + " " + mes +" " + ano, 500, 60*i+20); //Linea 1 de texto
  //  text(fecha, 500, 60*i); //BD grande

  }

}
