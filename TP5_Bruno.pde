import processing.sound.*;
SoundFile misonido;
PImage ImagenCargar;




Aventura aventura;

void setup() {

  ImagenCargar = loadImage ("1.jpg");
  image (ImagenCargar, 0, 0, 800, 600);
  size (800, 600);

  misonido = new SoundFile(this, "SonidoBallena2.wav");
  aventura = new Aventura();
}


void draw() {
  aventura.dibujar();
}
void keyPressed() {
  aventura.teclas();
}
