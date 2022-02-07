public void setup(){
  size(600,500);
}

public void draw(){
  background(0);
  sierpinski(50,470,470);
  fill(255);
}

public void keyPressed(){
  if(key == 'a'){
    fill((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
  }
}

public void sierpinski(int x, int y, int len) {
  if(len <= 25){
     triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }  
}


