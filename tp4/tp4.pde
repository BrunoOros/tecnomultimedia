//TRABAJO INCOMPLETO


tachobasura1 tachobasura;
tachobasura2 Tachobasura;
basura Basura;

void setup() {
  size (600, 600);
  tachobasura = new tachobasura1(100, height/2);
  Tachobasura = new tachobasura2 (310, height/2);
  Basura = new basura ();
}


void draw() {
  background (150);
  tachobasura.dibujar();
  Tachobasura.dibujar();
  Basura.dibujar();
  Basura.mouseClicked();
  println (mouseY);
}
