PVector location;
PVector cursor;
String s;

void setup(){
  size(500,500);
  location = new PVector(width/2 ,height/2);
  cursor = new PVector(mouseX, mouseY);
  

}


void draw(){
  background(255);
  s = "Magnitud de la linea: " + cursor.mag();
  cursor.set(mouseX, mouseY);
  cursor.sub(location);
  
  
  text(s, 10, 10, 70, 80);
  fill(1);
  
  cursor.normalize();
  cursor.mult(50);
  translate(width/2,height/2);
  
  line(0, 0, cursor.x, cursor.y);
  
}
