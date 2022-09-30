class tachobasura1 {
  float x, y;
  PImage tachobasura;

  tachobasura1(float _x, float _y) {
    x=_x;
    y=_y;
    tachobasura = loadImage ("tachobasura1.png");
  }

  void dibujar() {
    image (tachobasura, x, y, 200, 200);
  }
}
