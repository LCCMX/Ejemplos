//Clase
class walker{
  //Declaracion de variables
  float x,y,tx,ty,scl;
  //Constructor
  walker(){
  //Inicializacion de variables
  tx = 0;
  ty = 100;
  scl = 0;
  }
  //Metodo
  void step(){
  //Instruccion a ejecutar
  x = map(noise(tx),0,1,0,width);
  y = map(noise(ty),0,1,0,height);
  tx+=0.001;
  ty+=0.001;
  //Limitar los valores de 0 a 1280-1 = 1279.
  x = constrain(x,0,width-1);
  y = constrain(y,0,height-1);
  }
  
  void display(){
  //Tamaño del circulo vinculado con el valor de scl
  float size = map(noise(scl),0,1,1,50);
  //Color del relleno de la forma
  fill(map(noise(scl),0,1,0,56),map(noise(scl),0,1,0,36),map(noise(scl),0,1,55,142));
  //Sin contorno
  noStroke();
  //Forma
  ellipse(x,y,size,size);
  //Aumento de variable
  scl+=0.01;
  }
}
