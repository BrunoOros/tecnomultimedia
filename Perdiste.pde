
void perdiste(int x, int y) {


  if (botones==4) {
    frameRate(90);
    obsX = 600;
    background(200, 0, 0);
    textSize(70);
    fill(0);
    text("PERDISTE!", x, height/2);
    textSize(40);
    text("Puntuacion:"+p, x, y);
    textSize(20);
    text("vuelve a intenarlo ´´r´´", 400, 20);
    fill(0);
    text("VOLVER A MENÚ>> ´´a´´", 5, 17);
  }
}
