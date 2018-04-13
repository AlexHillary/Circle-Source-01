class WelcomeScreen {
  
  void renderSplash() {
    background(64, 64, 64);
    fill(255, 255, 255);
    textSize(20);
    textAlign(CENTER);
    text("Circle Source", width*0.5, 390);
    textSize(12);
    text("Drawing Tool", width*0.5, 410);
    textSize(10);
    text("Press 'C' to Clear", width*0.5, 580);
    text("Press 'S' to Screenshot", width*0.5, 600);
    println("Splashing");
  }
}