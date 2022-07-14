
void Salto () {
  salto=1;
  stroke (3);
  strokeWeight (1);
  ellipse(100, PosPelota, 40, 40);
  PosPelota=PosPelota+ VPelota;
  if (PosPelota<=150) {
    VPelota = 2;
  }
  if (PosPelota>271) {
    VPelota =0;
  }
}
