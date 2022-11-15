class Ballena {
  float x, y, radio;
  PImage FotoBallena;
 // float movX, movY;


  Ballena (float x_param, float y_param) {
    x = x_param;
    y = y_param;
   
    radio = random(50,150); 
    FotoBallena = loadImage("ballena.png");
  }


  void dibujar() {
    image (FotoBallena, x, y, radio, radio);
  }

  void mover() {
   
    if (y<=height) {
      y++;
     
    } else if (y>600) {
      y=random(-100, -800);
      
    }
  }
}
