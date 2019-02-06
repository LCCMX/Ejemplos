//Peril Walker

//Declaracion de objeto
walker w;
void setup(){
//Tamaño de sketch
size(1280,720);
//Inicializacion de objeto
w = new walker();
//Color del fondo
background(204,101,23);
}


void draw(){
  //Llamada de funciones
  for(int i = 0; i < 10; i++){
    w.display();
    w.step();
  }
}

//Live version - https://www.openprocessing.org/sketch/665411
