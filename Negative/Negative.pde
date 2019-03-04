//Negative

//Declaracion de imagen
PImage img;
//Declaracion de variables
float r,g,b;

void setup(){
  //Tamaño del sketch, relacionado con el tamaño de la imagen
  size(1280,720);
  //Enlace de la imagen con el archivo
  img=loadImage("fluids.jpg");
}

void draw(){
  //Mostrar imagen
  image(img,0,0);
  //Cargar los pixeles de la imagen dentro de processing
  loadPixels();
  //Leer cada pixel
  for(int i = 0; i < pixels.length; i++){

    r = red(pixels[i]);
    g = green(pixels[i]);
    b = blue(pixels[i]);
    
    //El valor del pixel  menos 255 en cada canal para invertir el color
   color newC = color(255-r,255-g, 255-b);
    pixels[i] = newC;

  }
  //Actualizar los pixeles
  updatePixels();

}
