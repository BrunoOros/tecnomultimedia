class Boton {
  boolean button ;

  int x;
  int y;
  int w;
  int h;




  Boton() {

    x = 200;
    y = 350;
    w = 150;
    h = 100;



    button =  false;
  }




  void boton1() {

    println (button);
    if (button) {
      aventura.escenario = ("escenario12");
    } else {
    }
    pushStyle();
    fill(0, 0, 255);
    rect (x, y, w, h);
    fill(255);
    text("CREDITOS", 210, 400);
    popStyle();
    if ((mouseX >x) && ( mouseX< x + w) &&
      (mouseY > y) && (mouseY< y + h && mousePressed)) {

      if (button) {

        button = false;
      } else {
        button = true;
      }
    }
  }
}
