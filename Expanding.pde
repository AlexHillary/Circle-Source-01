//The Expanding Class//
class Expanding {
  int x;
  int y;
  int radius = 5;
  int farOut;

  color clr = color(238, 131, 113);


  //Constructor//
  Expanding(int a, int b, color c) {
    x = a;
    y = b;
 
    strokeWeight(0.5);
   clr = c;
  }


//------------------------------- UPDATE -------------------------------//
void update() {
 radius++;
}

//-------------------------------- DRAW ---------------------------------//
void render() {
 noFill();

  //Set the Stroke Color//
  stroke(clr);

  //Draw the ellipse//
  ellipse(x, y, radius, radius);
}
}