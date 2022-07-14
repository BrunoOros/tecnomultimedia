void instrucciones(int x, int y) {
  if (botones==2) {
    background (0);
    textSize (50);
    text("INSTRUCCIONES", x, y*2);
    textSize(20);
    fill(255);
    text ("Esquivar obstaculos saltando con click\n ´´r´´ para reiniciar", x, 160);
    fill(255, 0, 0);
    text("VOLVER >> ´´a´´", 5, 17);
  }
}
