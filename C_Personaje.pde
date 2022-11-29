class Personaje {
  float x, y, radio;
  PImage FotoSubmarino;

  Personaje () {
    x = width/2;
    y = height/2;

    radio = 30;

    FotoSubmarino = loadImage("submarino.png");
  }


  void dibujar() {

    pushStyle();
    noCursor();
    imageMode (CENTER);
    image (FotoSubmarino, x, y, radio*3, radio*3);
    popStyle();
  }

  void mover() {
    x = mouseX;
    y = mouseY;
  }
}
