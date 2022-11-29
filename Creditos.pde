class Creditos {
  int x = width/2;
  int y = 610;
  PImage FondoCreditos;

  Creditos() {
  }


  void dibujar() {
    FondoCreditos = loadImage("FondoCreditos.jpg");

    image (FondoCreditos, 0, 0, 800, 600);
    //background (30, 30, 30);
    if (y <= 610) {
      y-=2.5;
    }
    if (y< -135) {
      y=610;
    }

    pushStyle();
    fill(255);
    text("M)Volver", 40, 50);
    textAlign(CENTER);
    textSize(30);
    text("Aventura grafica realizada por Bruno Orosco", x, y);
    text("Numero de legajo 85231/8\nMateria:Tecnologia Multimedial 1\nFacultad de Artes", x, y+50);
    popStyle();
  }
}
