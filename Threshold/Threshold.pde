
PImage img;
float r,g,b;

void setup(){
  size(800,428);
  img=loadImage("kiki.jpg");
}

void draw(){
  loadPixels();
 
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
     int ind = x+y*width;
      float b = brightness(img.pixels[ind]);
      if(b > 168){
        pixels[x+y*width] = color(255);
      }else if( b > 100){
       pixels[x+y*width] = color(100);
      }else{
       pixels[x+y*width] = color(0);
      }
    }
  }
  
  updatePixels();
}
