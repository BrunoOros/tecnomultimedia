class Aventura {
  ////propiedades////
  String escenario;
  int img= 8;
  PImage [] imagenes = new PImage[img];
  PImage mapa;
  
  ////CONSTRUCTOR////
  Aventura() {
    escenario = "escenario1";
    //cargar imagenes//
    mapa = loadImage ("mapa3.png");
    for (int i=0; i<8; i++) {
      int pos = i +1;
      imagenes[i]= loadImage("escenario"+pos+".jpg");
      
    }
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
    }else if (escenario== ("escenario9")) {
        escenario9();
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
    }else if (escenario == ("escenario5")){
    if (key == 'v' ){
    escenario = "escenario3";
  }
   }else if (escenario == ("escenario8")){
   if (key == 'h'){
   escenario = "escenario1";}}
  }
   
   ////////////////////////////////////////////////

  void escenario1() {
    image (imagenes[0], 0, 0, 800, 600);
    textSize(20);
    text( "Presione ENTER para continuar", width/2, 560);
    text ("FELICIDADES! Es tu primer dia en el trabajo que tanto anelaste.", 100, height/2);
    text ("Tu trabajo será transportar una carga de uso militar en el submarino (082 BR),\n aparentemente su uso es confidencial.", 100, 340);
  }
  void escenario2() {
    image (imagenes[5], 0, 0, 800, 800);
    image (mapa,450, 300, 350,300);
    text( "Presione ENTER para continuar", 150, 560);
    text ("SERÁ SENCILLO! la ruta es la siguiente...\nSaldras de el NE de Rusia hacia las islas de liajav, la carga se deberá descargar en la isla Nr3.\nluego  de descargar emprende el regreso. En total unas 20mil leguas,\n cuanto antes regreses mejor remunerado serás!\nBUENA JORNADA!", 20, 150);
  }
  void escenario3() {
    image (imagenes[4], 0, 0, 800, 800);
    text ("Luego de unas horas de viaje la temperatura desciende abruptamente...\nSeria bueno aunmentar la calefaccion del submarino.\nPERO RECUERDA! Deberas continuar tu recorrido con menor velocidad para estavilizar\n la energia del submarino.", 20, 200);
    text ("q)aumentar calefaccion y\n continuar mas lento.", 20, 400);
    text ("w) aumentar calefaccion sin\n reducir la velocidad.", 300, 400);
  }
  void escenario4() {
    image ((imagenes[3]), 0, 0, 800, 800);
    text ("Llegaste a la isla Nr1... vas bien!\nLas corrinetes del mar cominezan azotar la isla, parecen venir desde la isla Nr3... ", 20, 50);
    text ("a)ir hacia la isla Nr3.", 20, 180);
    text ("b)pasar por la isla Nr2.", 260, 180);
  }
  void escenario5() {
    image ((imagenes[4]), 0, 0, 800, 600);

    text ("Luego de 4 leguas el submarino tiene una falla debido a la\n poca energia administrada para el motor.\nDeberás descender aún mas la velocidad. Tu superior tendra en cuenta esta demora.", 50, height/2);
    text ("Presionar *v* para volver.", width/2, 560);
  }
  void escenario6() {
    image (imagenes[2], 0, 0, 800, 600);
    text( "Presione *p* para continuar", width/2, 560);
    text ("Lograste esquivar grandes corrientes marinas, Buen trabajo!.", 50, height/2);
  }
  void escenario7() {
    image (imagenes[3], 0, 0, 800, 600);
    text( "Presione *t* para continuar", width/2, 560);
    text ("LLegaste a la isla Nr3, descarga y emprede el regreso... ", 50, 530);
  }
  void escenario8() {
    image (imagenes[6], 0, 0, 800, 600);
    text( "El recorrido es interceptado por los que parece ser una gran manada de ballenas.\nIntenta no chocar ninguna.. ¿quien le haria daño a una ballena?.", 50, 300);
    text ("Presione ENTER para continuar", width/2, 560);
  }
  void escenario9() {
    background (0);
    text( "rompiste el motor", width/2, 560);
    text ("ENTER para volver", 50, height/2);
  }
}
