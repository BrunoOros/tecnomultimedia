class Aventura {
  ////propiedades////
  String escenario;
  int img= 8;
  PImage [] imagenes = new PImage[img];
  PImage mapa;
  PImage MarcoTexto;
  Minijuego game;

  ////CONSTRUCTOR////
  Aventura() {
    escenario = "escenario1";
    //cargar imagenes//
    MarcoTexto = loadImage("MarcoTexto.png");
    mapa = loadImage ("mapa3.png");
    for (int i=0; i<8; i++) {
      int pos = i +1;
      imagenes[i]= loadImage("escenario"+pos+".jpg");
    }
    //game = new Minijuego();
  }

  ////METODOs////
  void dibujar() {
    if (escenario ==("escenario1")) {
      escenario1();
    } else if (escenario == ("escenario2")) {
      escenario2();
    } else if (escenario == ("escenario3")) {
      escenario3();
    } else if (escenario == ("escenario4")) {
      escenario4();
    } else if (escenario==("escenario5")) {
      escenario5();
    } else if (escenario == ("escenario6")) {
      escenario6();
    } else if (escenario == ("escenario7")) {
      escenario7();
    } else if (escenario == ("escenario8")) {
      escenario8();
    } else if (escenario== ("escenario9")) {
      escenario9();
    } else if (escenario == ("game")) {
      game.pantalla_juego();
    }
  }
  ////////////////////////////////////////////////
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
      if (key == 'q') {
        escenario = "escenario4";
      } else if (key == 'w') {
        escenario = "escenario5";
      }
    } else if (escenario == ("escenario5")) {
      if (key == ENTER) {
        escenario = "escenario3";
      }
    } else if (escenario == ("escenario4")) {
      if (key == 'a') {
        escenario = "escenario9";
      }
    } else if (key == ENTER) {
      escenario = "escenario4";
    }
    if (key == 'b') {
      escenario= "escenario6";
    } else if (escenario == ("escenario6")) {
      if (key == 'p') {
        escenario = "escenario7";
      }
    } else if (escenario == ("escenario7")) {
      if (key == 't') {
        escenario = "escenario8";
      }
    } else if (escenario == ("escenario5")) {
      if (key == 'v' ) {
        escenario = "escenario3";
      }
    } else if (escenario == ("escenario8")) {
      if (key == 'h') {
        escenario = "game";
        game = new Minijuego();
      }
    }
  }

  ////////////////////////////////////////////////

  void escenario1() {
    image (imagenes[0], 0, 0, 800, 600);
    image (MarcoTexto, 10, 250, 750, 300);
    textSize(20);
    text( "Presione ENTER para continuar", width/2, 500);
    text ("FELICIDADES!\n Es tu primer dia en el trabajo que tanto anelaste.", 70, 285);
    text ("Tu trabajo será transportar una carga de uso militar en el\n submarino (082 BR),\n aparentemente su uso es confidencial.", 70, 355);
  }
  void escenario2() {
    image (imagenes[5], 0, 0, 800, 800);
    image (MarcoTexto, -20, 0, 800, 300);
    image (mapa, 450, 300, 350, 300);
    text( "Presione ENTER para continuar", 150, 560);
    text ("SERÁ SENCILLO! la ruta es la siguiente...\n Saldras de el NE de Rusia hacia las islas de liajav, la carga se deberá\n descargar en la isla Nr3.\nluego  de descargar emprende el regreso. En total unas 20mil leguas,\n cuanto antes regreses mejor remunerado serás!\nBUENA JORNADA!", 60, 50);
  }
  void escenario3() {
    image (imagenes[4], 0, 0, 800, 800);
     image (MarcoTexto, -10, 80, 800, 430);
    text ("Luego de unas horas de viaje la temperatura desciende\n abruptamente...\nSeria bueno aunmentar la calefaccion del submarino.\nPERO RECUERDA! Deberas continuar tu recorrido con menor\n velocidad para estavilizar la energia del submarino.", 70, 200);
    text ("q)-Aumentar calefaccion y\n continuar mas lento.", 150, 400);
    text ("w)-Aumentar calefaccion sin\n reducir la velocidad.", 400, 400);
  }
  void escenario4() {
    image ((imagenes[3]), 0, 0, 800, 800);
    image (MarcoTexto, 50, 200, 700, 330);
    text ("Llegaste a la isla Nr1... vas bien!\nLas corrinetes del mar cominezan azotar la isla,\n parecen venir desde la isla Nr3... ", 130, 280);
    text ("a)-Ir hacia la isla Nr3.", 220, 470);
    text ("b)-Pasar por la isla Nr2.", 440, 470);
  }
  void escenario5() {
    image ((imagenes[4]), 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 330);

    text ("Luego de 4 leguas el submarino tiene una falla debido a la\n poca energia administrada para el motor.\nDeberás descender aún mas la velocidad. Tu superior tendra en cuenta esta demora.", 50, height/2);
    text ("v)-Para volver.", width/2, 560);
  }
  void escenario6() {
    image (imagenes[5], 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 330);
    text( "p)-Para continuar", width/2, 450);
    text ("Lograste esquivar grandes corrientes marinas,\n BUEN TRABAJO!.", 150, height/2);
  }
  void escenario7() {
    image (imagenes[7], 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 330);
    text( "t)-Para continuar", width/2, 460);
    text ("LLegaste a la isla Nr3, descarga y emprede el regreso... ", 150, height/2);
  }
  void escenario8() {
    image (imagenes[6], 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 330);
    text( "El recorrido es interceptado por los que parece ser\n una gran manada de ballenas.\nIntenta no chocar ninguna.. ¿quien le haria daño a una ballena?.", 130, 300);
    text ("H)-iNICIAR!", width/2, 460);
  }
  void escenario9() {
    background (0);
    text( "rompiste el motor", width/2, 560);
    text ("ENTER)-Para volver", 50, height/2);
  }
}
