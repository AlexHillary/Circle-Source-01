//--------------------------- CIRCLE SOURCE ----------------------------//
//------------------------- Alexander Hillary --------------------------//

//Creating the ArrayLists//
ArrayList<Wave> waves = new ArrayList<Wave>();
ArrayList<Expanding> circles = new ArrayList<Expanding>();

//Creating the Classes//
WelcomeScreen Ws;
Title Tt;
Colour_Buttons b1, b2;
Circle_Buttons b3, b4;

//Variables//
color clr = color(239, 67, 54);
int renderFunction = 1;
boolean splash;
//------------------------------- SETUP -------------------------------//
void setup() {
  size(800, 800);


  // Welcome Screen // 
  splash = false;
  Ws = new WelcomeScreen();
  Ws.renderSplash();

  {
    // Buttons for Colour Change //
    b1 = new Colour_Buttons(10, 10, #EF4336);
    b2 = new Colour_Buttons(50, 10, #0433BF);

    // Buttons for Circle Function Change //
    b3 = new Circle_Buttons(90, 10, #C0CDF3);
    b4 = new Circle_Buttons(130, 10, #F8ACA6);

    //Title//
    Tt = new Title();

    //Set all ellipses to draw from the Center//
    ellipseMode(CENTER);
  }
}
//------------------------------ KEY PRESSED ------------------------------//
void keyPressed() {
  //Saving a Screenshot//
  {
    if (key=='s'||key=='S')
      saveFrame(); 
    saveFrame("A.Hillary-##.png");
  }

  if (key == 'c') {
    circles.clear();
  }
}

//--------------------------------- DRAW ----------------------------------//
void draw() {
  while (splash == false) {
    delay(2000);
    splash = true;
  }
  //Clear the Background//
  background(242, 242, 242);

  //Button Rendering//
  b1.render();
  b2.render();
  b3.render();
  b4.render();

  //Title Rendering//
  Tt.render();

  //Function Type Selector//
  if (b3.selected) {
    renderFunction = 1;
    println("b3");
  } else if (b4.selected) {
    renderFunction = 2;
    println("b4");
  }

  //Colour Selector// 
  if (b1.selected) {
    clr = b1.clr;
    println("b1");
  } else if (b2.selected) {
    clr = b2.clr;
    println("b2");
  }

  //Wave Function - If the mouse is pressed//
  if (mousePressed) {    
    //Create a new Wave//
    if (renderFunction == 1) {
      Wave w = new Wave(clr);
      //and Add it to the ArrayList//
      waves.add(w);
    } else if (renderFunction == 2) {
      Expanding w = new Expanding(mouseX, mouseY, clr);
      //and Add it to the ArrayList//
      circles.add(w); 
      
    }
  } 
  //Expanding Function - Calling and Rendering//
  for (int i = 0; i < circles.size(); i++) {
    if (renderFunction == 2) {
      Expanding c = circles.get(i);
      c.update();
      c.render();
    }
  } 
  //Waves - Calling and Rendering//
  for (int i = 0; i < waves.size(); i ++) {
    //Run the Wave methods//
    waves.get(i).update();
    waves.get(i).display();
    //Waves - Culling//
    if (waves.get(i).dead()) {
      //If so, delete it
      waves.remove(i);
    }
  }

  {

    // Mouse Aesthetic //
    pushMatrix();
    translate(mouseX, mouseY);
    beginShape();
    strokeWeight(0.5);
    stroke(64, 64, 64); 
    line(-10, 0, 10, 0);
    stroke(64, 64, 64); 
    line(0, -10, 0, 10);
    endShape(CLOSE);
    popMatrix();
  }
}

//------------------------------- MOUSE DRAGGED -------------------------------//
void mouseDragged() {
  //Changing Stroke Colour with ********//
  stroke(clr);
  line(pmouseX, pmouseY, mouseX, mouseY);

  //circles.add(new Expanding(mouseX, mouseY));
}

//------------------------------- MOUSE PRESSED -------------------------------//
void mousePressed() {
  //Changing Colour if Mouse is Pressed//
  b1.checkClick();
  b2.checkClick();
  b3.checkClick();
  b4.checkClick();
  b5.checkClick();
}

//------------------------------- THE END -------------------------------//