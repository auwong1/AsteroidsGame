Star[] bob;
Spaceship tom;
ArrayList <Asteroid> rob = new ArrayList<Asteroid>();
public void setup(){
  size(500, 500);
  background(0, 0, 25);
  tom = new Spaceship();
  bob = new Star[50];
  for(int i = 0; i < bob.length; i++)
    bob[i] = new Star();
  for(int i = 0; i < 25; i++)
    rob.add(new Asteroid());
  for(int i = 0; i < rob.size(); i++)
    rob.get(i);
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
    if(key == ' '){
      tom.accelerate(0.1);
    }
  }
  for(int i = 0; i < bob.length; i++)
    bob[i].show();
    
  tom.move();
  tom.show();
  for(int i = 0; i < rob.size(); i++){
    rob.get(i).move();
    rob.get(i).show();
    float d = dist((float)tom.getX(), (float)tom.getY(), (float)rob.get(i).getCenterX(), (float)rob.get(i).getCenterY());
    if(d > 1)
      rob.remove(i);
  }
}
