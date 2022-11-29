class Aventura {
  String escenario;
  Escenario escena;
  Minijuego  game;
  Creditos creditos;


  Aventura () {
    ///DOY VALOR  INICIAL A ESCENARIO///
    escenario = "escenario1";

    //CREO INSTANCIA DE LA CLASE MINIJUEGO
    escena = new Escenario();
    game = new Minijuego();
  }


  ///DIBUJA LA PANTALLA CORRESPONDIENTE (llamando a la funcion escenario#)///
  void dibujar() {

    if (escenario == ("escenario1")) {
      escena.escenario1();
    } else if (escenario == ("escenario2")) {
      escena.escenario2();
    } else if (escenario == ("escenario3")) {
      escena.escenario3();
    } else if (escenario == ("escenario4")) {
      escena.escenario4();
    } else if (escenario == ("escenario5")) {
      escena.escenario5();
    } else if (escenario == ("escenario6")) {
      escena.escenario6();
    } else if (escenario == ("escenario7")) {

      escena.escenario7();
    } else if (escenario == ("escenario8")) {
      escena.escenario8();
    } else if (escenario == ("escenario9")) {
      escena.escenario9();
    } else if (escenario == ("game")) {
      game.pantalla_juego();
    } else if (escenario == ("escenario10")) {
      escena.escenario10();
    } else if (escenario == ("escenario11")) {
      escena.escenario11();
    } else if (escenario == ("escenario12")) {
      escena.escenario12();
    } else if (escenario == ("escenario13")) {
      escena.escenario13();
    }
  }



  //-----------------------------------------------------//




  void teclas() {
    if (escenario ==("escenario1")) {
      if (key == ENTER) {
        escenario = "escenario2";
      }
    } else if (escenario == ("escenario2")) {
      if (key == ENTER) {
        escenario = "escenario3";
      }
    } else if (escenario == "escenario3") {
      if (key == 'q' || key == 'Q') {
        escenario = "escenario4";
      } else if (key == 'w' || key == 'W') {
        escenario = "escenario5";
      }
    } else if (escenario == ("escenario5")) {
      if (key == ENTER) {
        escenario = "escenario3";
      }
    } else if (escenario == ("escenario4")) {
      if (key == 'a' || key == 'A') {
        escenario = "escenario9";
      }
    } else if (key == 'v' || key == 'V') {
      escenario = "escenario4";
    }
    if (key == 'b' || key == 'B') {
      escenario= "escenario6";
    } else if (escenario == ("escenario6")) {
      if (key == 'p' || key == 'P') {
        escenario = "escenario7";
      }
    } else if (escenario == ("escenario7")) {
      if (key == 't' || key == 'T') {
        escenario = "escenario8";
      }
    } else if (escenario == ("escenario5")) {
      if (key == 'v'|| key == 'V' ) {
        escenario = "escenario3";
      }
    } else if (escenario == ("escenario8")) {
      if (key == 'h'|| key == 'H') {
        escenario = "game";
        game = new Minijuego();
        misonido.play();
      }
    } else if (escenario ==("escenario11")) {
      if (key == 'p'|| key == 'P') {
        escenario= "escenario8";
      }
    } else if (escenario ==("escenario1")) {
      if (key == 'i'|| key == 'I') {
        escenario= "escenario13";
      }
    } else if (escenario ==("escenario13")) {
      if (key == 'n'|| key == 'N') {
        escenario= ("escenario1");
      }
    } else if (escenario ==("escenario12")) {
      if (key == 'm'|| key == 'M') {
        escenario= "escenario10";
      }
    }
  }
}
