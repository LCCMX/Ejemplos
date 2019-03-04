//Pixelated image

//Declaracion de la imagen
PImage img;

void setup(){
  //Tamaño del sketch
  /*
  nota: el tamaño debe de ser el mismo que el de la imagen, si la imagen mide 1280x720
  size debera de ser "size(1280,720);".
  */
  size(800,428);
  //Enlazar la imagen con su nombre de archivo dentro de la carpeta
  img = loadImage("kiki.jpg");
}

void draw(){
  //Definir una variable para el espaciado
  float sep = map(mouseX,0,width,1,30);
  //Otra variable para el tamaño de los pixeles
  float tam = sep;
  //Un loop para leer todos los pixeles dentro de la imagen
  for(int i = 0; i < width; i+=sep){
    for(int j = 0; j < height; j+=sep){
      //Variable que obtiene el color del pixel en el momento
      color c = img.get(i,j);
      //sin contorno
      noStroke();
      //rellenar con el color del pixel donde este
      fill(c);
      //localizar un rectangulo en la posicion de "i" y "j" con el tamaño 
      rect(i,j,tam,tam); 
    }
  }
}
