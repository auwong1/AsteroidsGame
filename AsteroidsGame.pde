Star[] bob;
Spaceship tom;
public void setup(){
  size(500, 500);
  background(0, 0, 25);
  tom = new Spaceship();
  bob = new Star[50];
  for(int i = 0; i < bob.length; i++)
    bob[i] = new Star();
}
public void draw(){
  background(0, 0, 25);
  if(keyPressed){
    if(key == 'a'){
      tom.turn(-10);
    }
    if(key == 'd'){
      tom.turn(10);
    }
    if(key == 'h'){
      tom.setXSpeed(0);
      tom.setYSpeed(0);
      tom.setmyCenterX((int)(Math.random()*500));
      tom.setmyCenterY((int)(Math.random()*500));
    }
    if(key == 'w'){
      tom.accelerate(0.1);
    }
  }
  for(int i = 0; i < bob.length; i++)
    bob[i].show();
  tom.move();
  tom.show();
}
