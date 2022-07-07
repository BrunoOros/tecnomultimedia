void Obstaculos () {

  obsX=obsX+obsV*2;
  for (int j=0; j<=9; j++) {
    fill(0, 255, 0);
    rect (b[j]+obsX, 250, 50, 50);
    if (dist(b[j]+obsX, 270, 100, PosPelota)<10) {
      botones=4;
    }
  }

  if (obsX+b[9]<-50) {
    obsX=600;
  }

  //println (dificultad);
}
