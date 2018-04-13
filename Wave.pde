//The Wave Class//
class Wave {
  //Location//
  PVector pos;   
  //The Distance from the Wave Origin//
  int farOut;
 
  //Color//
   color clr = color(239, 67, 54);

  Wave(color c) {
    
    //Initialize the Location PVector//
    pos = new PVector();

    //Setting Position as Mouse Position//
    pos.x = mouseX;
    pos.y = mouseY;

    //Distance//
    farOut = 5;

    //Stroke Customisation//
    strokeWeight(0.5);
    clr = c;
  }

  void setColour(color c) {
    clr = c;
  }

  void update() {
    //Increase the distance out//
    farOut += 1.1;
  }

  void display() {
    //Stroke Color//
    stroke(clr);
    noFill();
    //Drawing the Ellipse//
    ellipse(pos.x, pos.y, farOut, farOut);
  }
  
void mirror(){
      loadPixels();
      int[] buffer = new int[pixels.length];
      buffer = pixels;
      for(int x = width/2; x < width; x++){
        for(int y = 0; y < height; y++){
          pixels[x+y*width] = buffer[(width-x)+y*width];
        }
      }
      updatePixels();
    
  }
  
  boolean dead() {
    //Defining the Number of Circles That Can Be Created//
    if (farOut > 80) {
      return true;
    }
    return false;
  }        
}