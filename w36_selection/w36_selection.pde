/*
```
 Ethan Ma
 NeXTCS
 HW36 -- Selection sort, running one pass
 2024-12-20
 time spent: 0.6
 ```
 
 DISCO:
 - I figured out how to swap the champ value with a greater contender value! 
 QCC:
 - How do I keep the rectangles moving towards the right? My champ rectangle just stays in the first column.
 */

//globals for selecting sort algo
int BUBBLE = 0;
int SELECTION = 1;
int INSERTION = 2;

int dataSize;
int maxValue;
SortArray sorty;

boolean liveSort;


void setup()
{
  size (600, 400);
  background(0);
  textSize(25);
  dataSize =20;
  maxValue = max(300, dataSize);
  sorty = new SortArray(BUBBLE, dataSize, maxValue);
}//setup


void draw()
{
  background(0);
  sorty.display();
  if (liveSort) {
    sorty.sortOnce();
  }
}//draw


void keyPressed()
{
  if (key == 'r') {
    reset();
  }//reset
  if (key == ' ') {
    liveSort = !liveSort;
  }
  if (keyCode == RIGHT) {
    sorty.sortOnce();
  }
  if (key == '1') {
    sorty.algorithm = BUBBLE;
    reset();
  }
  if (key == '2') {
    sorty.algorithm = SELECTION;
    reset();
  }
  if (key == '3') {
    sorty.algorithm = INSERTION;
    reset();
  }
}//keyPressed


void reset()
{
  sorty.randInts();
  sorty.resetSortVars();
}//reset for more sorting
