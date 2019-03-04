//Image w/Stripes v2

//Original from jacob feiss - https://www.openprocessing.org/sketch/677411

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
   
    /*
    Acuñar un valor de color a las variables dependiendo de el lugar en
    donde este "i"
    */
    r = red(pixels[i]);
    g = green(pixels[i]);
    b = blue(pixels[i]);
    
    //Agregar estos valores a otra variable
    color newC = color(r,g,b);
    
    //Si "i" es menor que tres partes de el tamaño de los pixeles en su totalidad
    if(i <pixels.length/3){
      //El canal de color rojo se multiplicara, mientras que los demas se dividiran
      newC = color(r*2,g/2,b/2);
    }else if(i <(pixels.length/3)*2){
      //El canal de color verde se multiplicara, mientras que los demas se dividiran
      newC = color(r/2,g*2,b/2);
    }else if(i <(pixels.length/3)*3){
      //El canal de color azul se multiplicara, mientras que los demas se dividiran
      newC = color(r/2,g/2,b*2);
    }
    //Dependiendo de donde se ejecute "if" o los dos "else if" sera el valor de newC
    //que sera pasado a los pixeles
    pixels[i] = newC;

  }
  //Actualizar los pixeles
  updatePixels();

}

//Live version - https://www.openprocessing.org/sketch/678461
