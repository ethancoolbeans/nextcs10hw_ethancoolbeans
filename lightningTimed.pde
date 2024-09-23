//Task 1: This program draws a lightning bolt at intervals. These lightning bolts each have different locations and length. 
//Task 2: Draw - organization (all functions are called in draw()), it runs continuously and creates the image
//        frameRate - determines the # of times draw() iterates per second
//        frameCount - tracks the # of iterations passed 
//        frameCount % 30 == 0 - it returns 'true' every 30 frames
//Task 3: background(#35388E);
//        added 1 line above drawLightning in the draw() method
//Task 4: I added another if(frameCount) line, and made the flash frameCount % 5, and the lightning frameCount % 10. The frequency of lightning is adjusted with frameCount. 
//if (frameCount % 5 == 0) {
//  background(#FFFFFF);
//  println("flash: " + frameCount);
//if (frameCount % 10 == 0) {
//      background(#35388E);
//      drawLightning(int(random(0, width)), 0, 40);
//      println("strike: " + frameCount);
//  }//if

void setup() {
  size (500, 500);
  background(#35388E);
  frameRate(5);
}//setup

void draw() {
  if (frameCount % 5 == 0) {
    background(#FFFFFF);
    println("flash: " + frameCount);
    if (frameCount % 10 == 0) {
      background(#35388E);
      drawLightning(int(random(0, width)), 0, 40);
      println("strike: " + frameCount);
  }//if
}//draw
}

void drawLightning(int x, int y, int numParts) {

  stroke(255);
  strokeWeight(4);
  int count = 0;
  int nextx = x;
  int nexty = y;
  while (count < numParts) {
    nextx = int(random(x - 15, x + 15));
    nexty+= int(random(5, 20));
    line(x, y, nextx, nexty);
    x = nextx;
    y = nexty;
    count++;
  }//while
}//drawLightning
