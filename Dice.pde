int sum = 0;
void setup()
{
  size(560, 600);
  noLoop();
}
void draw()
{
 
  background(187);
 
 for (int i = 10; i < 550; i+= 50){
   for ( int j = 10; j < 550; j+= 50){
 Die a  = new Die (j, i);
 a.show();
 }
 }
 
text("   ", 200, 590);
String a = "Total: ";
fill(0);
text (a  + sum , 200, 590 );
sum = 0;
 System.out.println (sum);
}
void mousePressed()
{
  redraw();
 sum = 0;
 
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX, myY;
 
 
  Die(int x, int y) //constructor
  {
    //variable initializations here
  myX = x;
  myY = y;
   
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
 int value = 0;
value = ((int) (Math.random() * 6 + 1));
fill (250);
rect(myX, myY,40,40);
fill((int)(Math.random() * 250 + 1));
if (value == 1){
ellipse (myX + 20, myY + 20 ,8 , 8);
}
if (value == 2){
ellipse (myX + 10, myY + 10, 8, 8); 
ellipse (myX + 30, myY + 30, 8, 8); 
}
if (value == 3){
ellipse (myX + 10, myY + 10, 8, 8); 
ellipse (myX + 30, myY + 30, 8, 8); 
ellipse (myX + 20, myY + 20 ,8 , 8);
}
if (value == 4){
ellipse (myX + 10, myY + 10, 8, 8); 
ellipse (myX + 30, myY + 30, 8, 8); 
ellipse (myX + 10, myY + 30, 8, 8); 
ellipse (myX + 30, myY + 10, 8, 8); 
}
if (value == 5){
ellipse (myX + 10, myY + 10, 8, 8); 
ellipse (myX + 30, myY + 30, 8, 8); 
ellipse (myX + 10, myY + 30, 8, 8); 
ellipse (myX + 30, myY + 10, 8, 8); 
ellipse (myX + 20, myY + 20 ,8 , 8);
}
if (value == 6){
ellipse (myX + 10, myY + 10, 8, 8); 
ellipse (myX + 30, myY + 30, 8, 8); 
ellipse (myX + 10, myY + 20, 8, 8); 
ellipse (myX + 10, myY + 30, 8, 8); 
ellipse (myX + 30, myY + 10, 8, 8); 
ellipse (myX + 30, myY + 20, 8, 8); 
}
sum = sum + value;
  }
}
