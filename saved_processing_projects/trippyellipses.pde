// https://www.reddit.com/r/processing/comments/h9idw1/arbre_de_loc%C3%A8an_processing/
// ocean tree
// for rgb picking https://imagecolorpicker.com/en


// can import libraries from https://processing.org/reference/libraries/ 

int num = 2000;
int range = 3;

color pale = color(235, 218, 180);
color dark = color(41,41,36);
color lightblue = color(171,219,227); 
color darkblue = color(21,76,121); 
color midblue = color(30,129,176); 

void setup() {
  size(640, 640);
  background(pale); // set background color
  stroke(lightblue); // sets the stroke color
  fill(darkblue); 
}

void draw() {
      ellipse(320, 320, mouseX, mouseY);
      // ellipse(mouseX, mouseY, 30, 30); for dotty
     }