PFont miTipografia ;
PImage imagen1 ;
int a = 1;
int px1 = 150;
int py1 = 910;
int px2 = 200;
int py2 = 810;
int px3 = 200;
int py3 = 810; 
int px4 = 200;
int py4 = 810 ;
int px5 = 200 ;
int py5 = 810;


void setup () {
  miTipografia = loadFont ("Rockwell-CondensedBold-48.vlw") ;
  textFont (miTipografia, 70) ; 
  imagen1 = loadImage ("img1.png") ;
  size (800, 800) ;
  surface.setResizable(true);

   // frameRate(120);
}


void draw () {



  image (imagen1, 0, 0, height, width);
  a+=4;


  if (a>=100) {
    background (0);
    fill (255, 255, 255, 200);
    textSize (40) ;
    text ("Directed by TIM  MIELANTS \nProdecer by SIMON  MALONEY", px1, py1) ;
    py1-=4;
  }
  if (py1<-40) {
    background (0);
    text ("Directer photography \nLAURIE  ROSE \nEditor  MARK  DAVIS \nSonid o SIMON  BYSSHE \nComposer  DICKAN  HINCHLIFFE", px2, py2);
    py2-=3;
  }
  if (py2<-180) {
    background (0) ;
    text ("Main actors \nCILLIAN  MURPHY \nSOPHIE  RUNDLE \nFINN  COLE \nPAUL  ANDERSON \nJOE  COLE \nPACKY  LEE \nIAN  PECK \nDINA  KORZON \nANNABELLE  WALLIS", px3, py3);
     py3-=3;
  }
  if (py3<-430) {
    text ("Supporting actors \nJORDAN  BOLGER \nPETA  BANKOLE \nALEXANDER  SIDDIG \nNINA  YNDIS \nHELEN  MCCRORY \nTOM  HARDY \nGARTE  JANSEN", px4, py4);
    py4-=3;
  }
  if (py4<-320) {
    text ("2nd Assistent director \nJAN  ZALAZAR \n3nd Asisstent director \nMARCK  ROBERTS \nFloor runners \nCHARLOTTE  SIMPSON \nTONY  LUCAS", px5, py5) ;
    py5-=3;
  }
  if (py5<-300) {
    background (255) ;
    textSize (100) ;
    fill (0) ;
    textMode (CENTER);
    text ("CLICK TO\n RESET", 200, height/2) ;
  }
  if (mousePressed == true){

    a = 1;
    py1 = 610;    
    py2 = 610;    
    py3 = 610;    
    py4 = 610 ;    
    py5 = 610;
  }

 println (a) ;
}
