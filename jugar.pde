void jugar() {
  if (botones==3) {
    background (0);
    Salto();
    Obstaculos ();
    stroke(255);
    line(0, 300, 600, 300);
    p+=1;
    text ("Puntuacion:"+p, 5, 30);
  }
}
