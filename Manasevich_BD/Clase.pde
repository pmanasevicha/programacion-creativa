class Clase {
  String dia,mes,ano;
  int maxima, minima;
  float x, y;
  PVector pos, vel;

  Clase(String dia,String mes,String ano, int maxima, int minima) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
    this.maxima = maxima;
    this.minima = minima;
  }

  void funcion(int i) {
    fill(255,255,0);
    ellipse(width/2,(height/1.5)-(maxima*5),maxima*10,maxima*10);
  }
  void texto(int i){
    fill(0);
    textSize(20);
    text(dia + " " + mes +" " + ano, 500, 60*i+20); //Linea 1 de texto

  }

}
