class Ballena {
  float x, y, radio;
  PImage FotoBallena;
 // float movX, movY;


  Ballena (float x_param, float y_param) {
    x = x_param;
    y = y_param;
   
    radio = random(15,50); 
    FotoBallena = loadImage("ballena.png");
  }


  void dibujar() {
    pushStyle();
    imageMode(CENTER);
    image (FotoBallena, x, y, radio*2, radio*3);
    popStyle();
  }

  void mover() {
   
    if (y<=height) {
      y+=5;
     
    } else if (y>=height) {
      y=-random(100, 800);
      
    }
  }
  
  boolean colisiona( float x_param, float y_parm, float radio_param){
  float distancia = dist (x,y,x_param,y_parm);
  
  if (distancia<= (radio + radio_param)){
  return true;
  }else {
  return false;}
  
  
  
  }
  
  
  
  
  
  
  
}
