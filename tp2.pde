// BRUNO NICOLAS OROSCO (85231/8). COMISION 4B-4
// https://youtu.be/LDOBSgwz2to





int cant=10;
int tam ; 
void setup() {
  size (500, 500);
  tam =width/cant;
  background(255);
  
  
}

void draw() {
  stroke(128);
  strokeWeight (3);
  line(0, 50, 500, 50);
  line(0, 100, 500, 100);
  line(0, 150, 500, 150);
  line(0, 200, 500, 200);
  line(0, 250, 500, 250);
  line(0, 300, 500, 300);
  line(0, 350, 500, 350);
  line(0, 400, 500, 400);
  line(0, 450, 500, 450);

float mx = map (mouseX,0, width, 30, 255);


translate (-15, 0);

  for (int l=0; l<cant; l++) {
    rect (l*tam+ 15, 0, 50, 50);
    
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }

  for (int l=0; l<cant; l++) {
    rect (l*tam+30, 50, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }

  for (int l=0; l<cant; l++) {
    rect (l*tam+50, 100, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+30, 150, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+15, 200, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+30, 250, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+50, 300, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+30, 350, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+15, 400, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
  for (int l=0; l<cant; l++) {
    rect (l*tam+30, 450, 50, 50);
    if (l%2==0 ) {
      fill (255);
    } else {
      fill (mx) ;
    }
  }
}
