float x, y;
float dim = 80.0;

void setup() {
  size(640, 640);
  noStroke();
}

void draw() {
  background(240,192,181);
  
  x = x + 0.8;
  
  if (x > width + dim) {
    x = -dim;
  } 
  
  translate(x, height/2-dim/2);
  fill(255);
  ellipse(-dim/2, -dim/2, dim, dim);
  
  // Transforms accumulate. Notice how this rect moves 
  // twice as fast as the other, but it has the same 
  // parameter for the x-axis value
  translate(x, dim);
  fill(0);
  ellipse(-dim/2, -dim/2, dim, dim);
}