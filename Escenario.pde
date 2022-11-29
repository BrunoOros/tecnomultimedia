class Escenario {
  int  img =8;
  PImage []imagenes = new PImage [img];
  PImage mapa;
  PImage MarcoTexto;
  Boton boton;
  Creditos creditos;
  Minijuego game;

  Escenario () {
    MarcoTexto = loadImage ("MarcoTexto.png");
    mapa = loadImage ("mapa3.png");
    for (int i=0; i<=7; i++) {
      int pos = i +1;
      imagenes[i]= loadImage("escenario"+pos+".jpg");
    }
    boton = new Boton();
    creditos = new Creditos();
  }

  void escenario1() {

    image (imagenes[0], 0, 0, 800, 600);
    image (MarcoTexto, 10, 250, 750, 300);
    textSize(20);
    text( "ENTER)-Continuar", width/2, 510);
    text( "I)Instrucciones", 210, 510);
    text ("FELICIDADES!\n Es tu primer dia en el trabajo que tanto anelaste.", 75, 285);
    text ("Tu trabajo será transportar una carga de uso militar en el\n submarino (082 BR),\n aparentemente su uso es confidencial.", 75, 355);
  }
  void escenario2() {
    image (imagenes[5], 0, 0, 800, 800);
    image (MarcoTexto, -20, 0, 800, 300);
    image (mapa, 450, 300, 350, 300);
    text( "ENTER)-Continuar", 150, 560);
    text ("SERÁ SENCILLO! la ruta es la siguiente...\n Saldras de el NE de Rusia hacia las islas de liajav, la carga se deberá\n descargar en la isla Nr3.\nluego  de descargar emprende el regreso. En total unas 20mil leguas,\n cuanto antes regreses mejor remunerado serás!\nBUENA JORNADA!", 60, 50);
  }
  void escenario3() {
    image (imagenes[4], 0, 0, 800, 800);
    image (MarcoTexto, -10, 80, 800, 430);
    text ("Luego de unas horas de viaje la temperatura desciende\n abruptamente...\nSeria bueno aumentar la calefaccion del submarino.\nPERO RECUERDA! Deberas continuar tu recorrido con menor\n velocidad para estavilizar la energia del submarino.", 70, 170);
    text ("Q)-Aumentar calefaccion y\n continuar mas lento.", 150, 400);
    text ("W)-Aumentar calefaccion sin\n reducir la velocidad.", 400, 400);
  }
  void escenario4() {
    image ((imagenes[3]), 0, 0, 800, 800);
    image (MarcoTexto, 50, 200, 700, 330);
    text ("Llegaste a la isla Nr1... vas bien!\nLas corrinetes del mar comienzan azotar la isla,\n parecen venir desde la isla Nr3... ", 130, 280);
    text ("A)-Ir hacia la isla Nr3.", 220, 470);
    text ("B)-Pasar por la isla Nr2.", 440, 470);
  }
  void escenario5() {
    image ((imagenes[2]), 0, 0, 800, 600);
    image (MarcoTexto, 10, 200, 800, 330);

    text ("Luego de 4 leguas el submarino tiene una falla debido a la\npoca energia administrada para el motor.\nDeberás descender aún mas la velocidad. Tu superior tendra en cuenta\nesta demora.", 100, height/2);
    text ("V)-Para volver.", width/2, 490);
  }
  void escenario6() {
    image (imagenes[5], 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 330);
    text( "P)-Continuar", width/2, 460);
    text ("Lograste esquivar grandes corrientes marinas,\n BUEN TRABAJO!.", 150, height/2);
  }
  void escenario7() {
    image (imagenes[7], 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 300);
    text( "T)-Continuar", width/2, 460);
    text ("LLegaste a la isla Nr3, descarga y emprede el regreso... ", 140, height/2);
  }
  void escenario8() {
    image (imagenes[6], 0, 0, 800, 600);
    image (MarcoTexto, 50, 200, 700, 330);
    text( "El regreso es interceptado por lo que parece ser\nuna gran manada de ballenas.\nIntenta no chocar ninguna por 700 segundos...\n¿quien le haria daño a una ballena?.", 130, 300);
    text ("H)-iNICIAR!", width/2, 470);
  }
  void escenario9() {
    image (imagenes[2], 0, 0, 800, 600);
    image (MarcoTexto, 50, 50, 700, 300);
    text( "La corriente marina es demasiado intensa\nEste submarino no está preparado", 120, 100);
    text ("V)-Volver", 280, height/2);
  }
  void escenario10() {

    pushStyle();
    background(0, 255, 0);
    textSize (30);
    text("Felicidades! Lograste atravesar la manada sin\nproblemas y terminar tu dia laboral...\n      Lo hiciste bien! ", 170, 150);

    boton.boton1();
    popStyle();
  }
  void escenario11() {
    background(255, 0, 0);
    fill(255);
    stroke(25);
    text("PERDISTE, destruiste el submarino", 200, 200);
    text("P)-Volver a intentar", 400, 500);
  }
  void escenario12() {
    creditos.dibujar();
  }
  void escenario13() {
    background (0, 0, 50);
    image (MarcoTexto, 50, 200, 700, 330);
    text ("INSTRUCCIONES\n  Presionár tecla con la opción que se desea seleciconar", 120, height/2);
    text ("N)-Volver", width/2, 480);
  }
}
