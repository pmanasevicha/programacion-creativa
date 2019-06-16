int index, contador;
float amt;
String po;


PFont banco, mes, anio;



void setup() {
  size(600, 600);
  frameRate(24);
  background(0);

  po="Hola Mundo";

  banco = createFont("AARDV_1.TTF", 44);
  mes = createFont("AkzidenzGrotesk BQ Bold.otf", 42);
  anio = createFont("BodoniStd.otf", 46);

  textFont(banco);
  text(po.toUpperCase(), 12, 60);
  textFont(mes);
  text("Mes", 12, 160);
  textFont(anio);
  text("Año", 12, 260);
}
