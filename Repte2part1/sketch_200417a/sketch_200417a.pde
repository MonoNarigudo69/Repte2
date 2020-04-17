PVector location;
PVector speed;

void setup() {
  size(640,360);
  background(255);
  
  location = new PVector(20,20);
  speed = new PVector(3,1);
}

void draw(){
  chechEdges();
  
  location.add(speed);
  
  background(1);
  ellipse(location.x, location.y, 16, 16);
   
}




void chechEdges(){
  if (location.x > width){
      speed.x *= -1;
  }
  if (location.x < 0){
       speed.x *= -1;
  }
  if (location.y > height){
      speed.y *= -1;
  }
  if (location.y < 0){
      speed.y*= -1;
  }
  
}
