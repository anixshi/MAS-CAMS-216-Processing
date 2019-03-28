boolean mono = false;

// Setting up a 600x600 black smooth canvas. 
void setup() {
  size(600,600);
  background(255);
  smooth();
  frameRate(30);
  
}

void draw() {
  
  int sizeW = 40;
  int sizeH = 40;
  int t = frameCount;

  for (int i = 0; i< (width/sizeW); i++) {
    for (int j = 0; j< (height/sizeH); j++) {
      
      int r = int(127.5*sin(t*((i+1)*(j+1)) * 0.0005) + 127.5);
      int g = int(127.5*sin(t*((i+1)*(j+1)) * 0.0006) + 127.5);
      int b = int(127.5*sin(t*((i+1)*(j+1)) * 0.0007) + 127.5);
      
      if (mono) {
        fill(r);
        rect((i*sizeW), (j*sizeH), sizeW, sizeH);
      } else {
        fill(r,g,b);
        rect((i*sizeW), (j*sizeH), sizeW, sizeH);
      }
    }
  }
}

void keyPressed() {
  if (key=='f') {
    mono = !mono;
  }
}
