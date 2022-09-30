class tachobasura2 {
  float x, y;
  PImage tachobasura;

  tachobasura2(float _x, float _y) {
    x=_x;
    y=_y;
    tachobasura = loadImage ("tachobasura2.png");
  }

  void dibujar() {
    image (tachobasura, x, y, 200, 200);
  }
}
