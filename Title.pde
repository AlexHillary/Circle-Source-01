class Title {

  PFont SofiaPro;

  void setup() {
    SofiaPro = loadFont("SofiaProLight-15.vlw");
    textFont(SofiaPro);
    fill(64, 64, 64);
  }
  void render() {
    fill(64, 64, 64);
    textSize(13);
    textAlign(LEFT);
    // fill(239, 67, 54);
    text("Circle Source", 10, 775);
    text("Alexander Hillary", 10, 790);
    text("s3542023", 730, 790);
    //Button Titles//
    //  fill(64, 64, 64);
    textSize(10);
    text("CLR 01 ", 10, 55);
    text("CLR 02 ", 50, 55);
    text("WAVES", 90, 55);
    text("GROW", 130, 55);
  }
}