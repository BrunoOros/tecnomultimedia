void jugar() {
  if (botones==3) {

    image (fondo, 0, 0);

    Salto();
    Obstaculos ();
    stroke(0);
    strokeWeight (4);
    line(0, 300, 600, 300);
    p+=1;
    text ("Puntuacion:"+p, 5, 30);
  }
}
