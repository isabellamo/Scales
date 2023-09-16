void setup(){
  size(500,500);
  noLoop();
  background(70,130,180);
}

void draw(){
 for (int y = 5; y < 500; y += 20){
   for (int x = 10; x < 500; x += 25){
     double pick = Math.random() * 10;
     scale(x,y, 100, pick);
   }
 }
}

void scale(int x, int y, float a, double pick){
  beginShape(); // small to big shape with color change
  int diam = 0;
  noFill();
  while(diam < 16){ // outer to inner
    stroke(a,190,190); // initial color at the center coordinate
      vertex(x, y); // +y (25,10) // initially y - diam
      vertex(x + diam * 0.8, y - diam * 0.6); // -x, +y (37,16)
      vertex(x + diam, y); // -x (40,25)
      vertex(x + diam * 0.8, y + diam * 0.6); // -x, - y (37,34)
      vertex(x, y + diam); // -y (25,40)
      vertex(x - diam * 0.8, y + diam * 0.6); // +x, -y (13,34)
      vertex(x - diam, y); // +x (10,25)
      vertex(x - diam * 0.8, y - diam * 0.6); // +x, +y (13,16)
      vertex(x, y); // +y (25,10)
    diam++;
    a += pick;
    // teel = 100,190,190
    // dark teel = 0,190,190
  }
  endShape();
}
