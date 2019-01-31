public void setup(){
  size(600,600);
  background(0);
}

public void draw(){
  fractal(300, 300, 400);
}

public void fractal(int x, int y, int size){
  noFill();
  stroke(255,80,238);
  rect(x,y,size,size);
  if(size <= 20){ //change color every layer
    
  }
  else{
    stroke(255,206,64); // doesnt work
    fractal(x+size/2, y, size / 4);
    fractal(x-size/2,y,size/4);
    fractal(x+size/2, y+ size/2, size/4);
    fractal(x-size/2, y-size/2, size/4);
    fractal(x-size/2, y+ size/2, size/4);
    fractal(x+size/2, y-size/2, size/4);
    fractal(x, y+ size/2, size/4);
    fractal(x, y-size/2, size/4);
  }
}
