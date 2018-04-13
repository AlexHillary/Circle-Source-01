class Circle_Buttons {
  int x, y;
  int buttonWidth = 30;
  int buttonHeight = 30;
  color clr;
  boolean selected = false;
//Button Positioning and Colour//
  Circle_Buttons(int _x, int _y, color _clr)
  {
    x = _x;
    y = _y;
    clr = _clr;
  }

  void checkClick() {
    //Button Outlined if Clicked inside Button Parameters//
    if (mouseX >= x && mouseX < x+buttonWidth &&
      mouseY >= y && mouseY < y+buttonHeight) {
      strokeColor = clr;
      selected = true;
    } else {
      selected = false;
    }
  }

  void render() {
    //Button Customisation//
    fill(clr);
    if (selected) {
      stroke(64,64,64);
    } else {
      stroke(clr);
    }
    //Render Button//
    rect(x, y, buttonWidth, buttonHeight);
  }
}