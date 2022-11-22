class Minijuego {
  Personaje submarino;
  int  cantBallenas = 15;
  Ballena[] ball;
  int vida;
  int tiempo;
  PImage FondoJuego;


  //constructor
  Minijuego() {
    FondoJuego = loadImage ("FondoJuego.jpg");

    submarino = new Personaje();
    ball = new Ballena[cantBallenas];

    for (int i = 0; i<cantBallenas; i++) {
      ball[i] = new Ballena( random(width), -random (100, 800));
    }
    vida=50;
    tiempo=0;
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
    tiempo++;
    fill(0, 200, 0);
    text( "TIEMPO: " + tiempo, 200, 30);
    text( "VIDA: " + vida, 100, 30);

    //condicion para perder/ganar.
    if (vida<=0) {
      background(255, 0, 0);
      fill(255);
      text("PERDISTE, destruiste el submarino", 400, 200);
      text("presiona P para volver a intentar", 400, 300);
    } else if (tiempo>=800) {
      aventura.escenario = "escenario10";
    }
  

}
  
  
  
}
