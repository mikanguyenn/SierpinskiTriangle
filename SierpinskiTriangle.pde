int base = 40;
public void setup(){
  background(255);
  size(600,600);
}

public void draw(){
  sierpinski(20,470,470);
}

public void keyPressed(){
  if(base>=0){
    if(key == 'a'){
      base= base + 20;
    }
    else if(key == 's'){
      base= base-20;
    }
  }
}

public void sierpinski(int x, int y, int len) {
  int myColor = color((int)(Math.random()*256),(int)(Math.random()*256), (int)(Math.random()*256));
   fill(myColor);
  noLoop();
  if(len <= base){
     triangle(x, y, x+len, y, x+len/2, y-len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }  
}

