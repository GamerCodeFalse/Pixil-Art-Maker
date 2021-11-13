int rows = 20;
int cols = 20;
int pixil_size = 32;
int r = 0;
int g = 0;
int b = 0;
int x;
int y;


void setup(){
  size(640,640);
  background(255);
  drawGrid();
}
void draw(){}

void drawGrid(){
  for(int i = 0;i < rows;i++){
    for(int j = 0;j < cols;j++){
      if(i%2 == j%2){
        fill(255);
      }
      else{
        fill(225);
      }
      noStroke();
      rect(i*pixil_size,j*pixil_size,pixil_size,pixil_size);
    }
  }
}
void mouseDragged(){
  for(int i = 0;i < rows;i++){
    for(int j = 0;j < cols;j++){
      fill(r,g,b);
      x = mouseX/32;
      y = mouseY/32;
      rect(x*pixil_size,y*pixil_size,pixil_size,pixil_size);
    }
  }
}
