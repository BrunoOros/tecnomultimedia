class Minijuego {

  int tiempo;
  int vida;
  PImage FondoJuego;
  Personaje submarino;
  Ballena[] ball;
  int cantBallenas = 15;
  Escenario escena;

  Minijuego() {

    FondoJuego = loadImage ("FondoJuego.jpg");
    submarino = new Personaje();
    ball = new Ballena[cantBallenas];
    vida = 50;
    tiempo = 0;
    for (int i = 0; i<cantBallenas; i++) {
      ball[i] = new Ballena( random(width), -random (100, 800));
    }
  }





  void pantalla_juego() {

    //  background(0);
    image (FondoJuego, 0, 0, 800, 600);
    submarino.mover();
    submarino.dibujar();

    for (int i=0; i<cantBallenas; i++) {
      ball[i].mover();
      ball[i].dibujar();

      if (ball[i].colisiona(submarino.x, submarino.y, submarino.radio)) {
        vida--;
      }
    }
    marcadores();
    perder();

    //misonido.play();
  }

  void marcadores() {
    pushStyle();
    textSize(20);
    tiempo++;
    fill(0, 200, 0);
    text( "TIEMPO: " + tiempo+ "seg", 100, 30);
    text( "VIDA: " + vida, 10, 30);
    popStyle();
  }

  void perder() {

    //condicion para perder/ganar.
    if (vida<=0) {
      misonido.stop();
      cursor();
      aventura.escenario = "escenario11";
    } else if (tiempo>=700) {
      misonido.stop();
      cursor();
      aventura.escenario = "escenario10";
    }
  }
}
