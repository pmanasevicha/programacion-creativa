

Table datos;
float windVel[] = {0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};

Wind [] w;
Wind [] w2;
Wind [] w3;
Wind [] w4;

float rot;

void setup() {
  size(800, 800);
  datos = loadTable("data6", "header");

  w = new Wind[7];
  w2 = new Wind[7];
  w3 = new Wind[7];
  w4 = new Wind[7];
  for (int i = 0; i < w.length; i ++) {
    w[i] = new Wind(100, (i+1)*100, datos.getFloat(i, 16));
    w2[i] = new Wind(200, (i+1)*100, datos.getFloat(i+7, 16));
    w3[i] = new Wind(300, (i+1)*100, datos.getFloat(i+14, 16));
    w4[i] = new Wind(400, (i+1)*100, datos.getFloat(i+21, 16));
  }
}


void draw() {
  background(0);
  fill(255);



  for (int i = 0; i < w.length; i++) {
    pushMatrix();
    w[i].vel(datos.getFloat(i,16)*0.1);
    w[i].spinner();
    popMatrix();
    pushMatrix();
    w2[i].vel(datos.getFloat(i+7,16)*0.1);
    w2[i].spinner();
    popMatrix();
    pushMatrix();
    w3[i].vel(datos.getFloat(i+14,16)*0.1);
    w3[i].spinner();
    popMatrix();
    pushMatrix();
    w4[i].vel(datos.getFloat(i+21,16)*0.1);
    w4[i].spinner();
    popMatrix();
  }
}
