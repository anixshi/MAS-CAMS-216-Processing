// Defining and initializing variables to use later on.

float t = 0;
float x1 = 0;
float y1 = 0;
float x2 = 0;
float y2 = 0;
float frac = .05;

// Setting up a 600x600 black smooth canvas. 
void setup() {
  size(600,600);
  background(0);
  smooth();
}

// Draws 10 grey lines moving across the screen.
void draw() {
  translate(width/2, height/2);
  t = frameCount;
  stroke (random(175, 255));
  fill (255);
  background(0);
  
  for (int i =0; i <10; i++) {
    x1 = 50*sin(((t + i) * frac)/5) + 80*cos(((t + i) * frac) + 1);
    y1 = 100*cos(((t + i) * frac)/3) + 200*sin(((t + i) * frac));
    x2 = 80*sin(((t + i) * frac)/3) + 100*cos(((t + i) * frac)/4);
    y2 = 100*cos(((t + i) * frac)/3) + 40*sin(((t + i) * frac)/6 - 50);
    line(x1, y1, x2, y2);
  
}
}
