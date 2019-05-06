// Array de objetos de mi clase
Clase[] objetos;

// Objeto tabla para manejar la base de datos
Table tabla;
Clase o;


void setup() {
  size(600,600);


  // cargar la base de datos con el parámetro de cabecera
  // no es necesario la ruta /data, Processing lee por defecto
  tabla = loadTable("data.csv", "header");

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
    String dia = row.getString("D");
    String mes = row.getString("M");
    String ano =row.getString("A");
    int maxima = row.getInt("Max TemperatureC");
    int minima = row.getInt("Min TemperatureC");

    // Con esas variables construyo un objeto
    objetos[i] = new Clase(dia,mes,ano, maxima, minima);
  }

}

void draw() {

background(255);
	// Uso de los objetos como siempre
	 for (int i = 0; i < objetos.length; i ++) {
	   objetos[i].funcion(objetos[i].maxima);
     objetos[i].texto(i);


	}
}
