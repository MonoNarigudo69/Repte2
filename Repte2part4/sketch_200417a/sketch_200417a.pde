Walker test;
Character warrior, enemy;
color cw, ce;


void setup(){
size(600,600);
test = new Walker();
cw = color(255, 0, 0);
ce = color(0, 255, 0);
warrior = new Character(275, 300, 5,"Warrior", cw);
enemy = new Character(325, 300, 3, "Enemy", ce);

}

void draw(){
  
  background(255);
  
  warrior.walk();
  enemy.walk();
  
  
  warrior.display();
  warrior.proces();
  enemy.display(); 
  enemy.proces();
  line(warrior.location.x + 15, warrior.location.y, enemy.location.x - 15, enemy.location.y);
  
  if(warrior.location.x >= enemy.location.x - 30 || warrior.location.x >= enemy.location.x + 30){
    warrior.actualitzarEstat(275, 300, warrior.vides -1);
    enemy.actualitzarEstat(325, 300, enemy.vides);
  }

  if(warrior.location.x <= enemy.location.x - 100 || warrior.location.x >= enemy.location.x + 100){
    warrior.actualitzarEstat(275, 300, warrior.vides);
    enemy.actualitzarEstat(325, 300, enemy.vides -1);
  }

  if(enemy.vides == 0){
    enemy = null;
    background(1);
    text("WARRIOR WINS", 300, 300);
  }
  
  if(warrior.vides == 0){
    warrior = null;
    background(1);
    text("ENEMY WINS", 300, 300);
  }
  
}



class Character extends Walker
{
   
  int vides;
  String nom;
  color c;
  
  Character(int x, int y, int v, String nom, color c){   
    location.x = x;
    location.y = y;
    vides = v;
    this.nom = nom;
    this.c = c;
 
  }
  
  void proces(){
    text(nom, location.x -20, location.y + -30);
    text("Vides = " + vides, location.x -20, location.y + 30);
    fill(c);
  }
  
  
  void actualitzarEstat(int x, int y, int v){
    location.x = x;
    location.y = y;
    vides = v;
  }
  

}


class Walker
{
  public PVector location;
  Walker(){
    location = new PVector(250,250);
  }
  
  void walk(){
    int choice = int(random(4));
    if (choice == 0){
      location.x += 1;
    }
    else if (choice == 1){
      location.x -= 1;
    }
    else if (choice == 2){
      location.y += 1;
    }
    else if (choice == 3){
      location.y -= 1;
    }
  }
  
  void display(){
    ellipse(location.x, location.y, 30, 30);
  
  }
  
  
}
