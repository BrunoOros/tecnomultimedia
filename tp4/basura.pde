class basura {
  int x, y;
  PImage basura1, basura2, basura3, basura4, basura5, basura6, basura7;

  basura() {
    x=10;
    y=20;
    basura1 = loadImage ("basura1.png");
    basura2 = loadImage ("basura2.png");
    basura3 = loadImage ("basura3.png");
    basura4 = loadImage ("basura4.png");
    basura5 = loadImage ("basura5.png");
    basura6 = loadImage ("basura6.png");
    basura7 = loadImage ("basura7.png");
  }

  void dibujar() {

    image (basura1, x, y, 50, 70);
    image (basura2, 50, 50, 50, 70);
    image (basura3, 150, 50, 50, 70);
    image (basura4, 250, 50, 50, 70);
    image (basura5, 350, 50, 50, 70);
    image (basura6, 450, 50, 50, 70);
    image (basura7, 540, 50, 50, 70);
  }

  void mouseClicked() {
    if (mouseX>9 && mouseX<60 && mouseY>18 && mouseY<90) {
      x=mouseX;
      y=mouseY;
    }
  }
}
