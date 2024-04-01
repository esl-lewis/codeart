// https://www.reddit.com/r/processing/comments/h9idw1/arbre_de_loc%C3%A8an_processing/
// ocean tree
// for rgb picking https://imagecolorpicker.com/en

int num = 2000;
int range = 3;

color pale = color(235, 218, 180);
color dark = color(41,41,36);

void setup() {
  size(640, 640);
  background(pale); // set background color
  stroke(dark); // sets the stroke color
  line(150, 75, 270, 350);
}

void draw() {
       line(150, 75, mouseX, mouseY);
     }