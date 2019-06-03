// Array de objetos de mi clase
Clase[] objetos;

// Objeto tabla para manejar la base de datos
Table tabla;



void setup() {
  size(600,600);
  background(255);

  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("data6.csv", "header");

  // inicalizamos el array con la cantidad de filas del archivo
  int total = tabla.getRowCount(); //entrega el largo de la base de datos
  objetos = new Clase[total];

  // lo mismo se puede escribir en una línea de código
  objetos = new Clase[tabla.getRowCount()];

  // Iterar por la base de datos y llenar el array con esa información, creando un objeto por dato

  // Con un contador podemos pasar por cada fila del archivo
  for (int i = 0; i < tabla.getRowCount(); i++) {
	// Creamos un nuevo objeto del tipo TableRow con la información de cada fila
    TableRow row = tabla.getRow(i);

	// Con el, podemos ir a los métodos para hacer paridad entre el dato y el constructor		// La paridad debe ser exacta en caracteres
	// Una variable del constructor por cada variable del dato (que queramos)
    // En la base de datos del ejemplo son 4, pero acá se muestran 3
    //String fecha = row.getString("PET");
    String fecha = row.getString("PET");
    int maximaT = row.getInt("Max TemperatureC");
    int minimaT = row.getInt("Min TemperatureC");

    int maximaH = row.getInt("Max Humidity");
    int minimaH = row.getInt(" Min Humidity");


    // Con esas variables construyo un objeto
    objetos[i] = new Clase(fecha, maximaT, minimaT,maximaH, minimaH);

  }

}

void draw() {

background(255);
	// Uso de los objetos como siempre
	 for (int i = 0; i < objetos.length; i ++) {
	   objetos[i].funcion(objetos[i].maximaT,i,i);
    // objetos[i].texto(i);
     objetos[i].movimiento(i,i);


	}
}

void keyPressed() {
  if (key == 'c' || key == 'C') { //detiene el sketch
    saveFrame("pantallazo-######.png");
  }
}
