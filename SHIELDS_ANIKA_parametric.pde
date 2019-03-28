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

// This code is run on every frame. Draws lines of various shades of grey.
void draw() {
  translate(width/2, height/2);
  t = frameCount;
  stroke (random(175, 255));
  fill (255);
  
// Conditions that need to be met in order to see changes to the design such as color.  
  if (key == 'f') {
    stroke (random(0,255), random(0,255), random(0,255));
    } if (key == 'm') {
    stroke (random(175, 255));
    } if (key == 's') {
    stroke(0);
    }
    
// Parametric equations for the design we see. 
  x1 = 50*sin((t * frac)/5) + 80*cos((t * frac) + 1);
  y1 = 100*cos((t * frac)/3) + 200*sin((t * frac));
  x2 = 80*sin((t * frac)/3) + 100*cos((t * frac)/4);
  y2 = 100*cos((t * frac)/3) + 40*sin((t * frac)/6 - 50);
  
  line(x1, y1, x2, y2);
}

// Setting conditions for if specifc keys are pressed.
void keyPressed() {
  if (key == 'e') {
    background(0);
    println("Screen has been erased.");
  }
  if (key == 'f') {
    println("Lines are being drawn in random colors.");
  } if (key == 'm') {
    println("Lines are being drawn in random shades of grey.");
  }
}
