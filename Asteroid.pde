class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    myColor = color(150);
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myXspeed = (double)(Math.random() * 3) - 1;
    myYspeed = (double)(Math.random() * 3) - 1;
    myPointDirection = (int)(Math.random() * 360);
    corners = 6;
    xCorners = new int [corners];
    yCorners = new int [corners];
    xCorners[0] = (int)(Math.random() * 3) + 12;
    yCorners[0] = (int)(Math.random() * 3) + 0;
    xCorners[1] = (int)(Math.random() * 3) + 6;
    yCorners[1] = (int)(Math.random() * 3) + 11;
    xCorners[2] = (int)(Math.random() * 3) - 12;
    yCorners[2] = (int)(Math.random() * 3) + 8;
    xCorners[3] = (int)(Math.random() * 3) - 6;
    yCorners[3] = (int)(Math.random() * 3);
    xCorners[4] = (int)(Math.random() * 3) - 12;
    yCorners[4] = (int)(Math.random() * 3) - 8;
    xCorners[5] = (int)(Math.random() * 3) + 8;
    yCorners[5] = (int)(Math.random() * 3) - 11;
    rotSpeed = (double)(Math.random() * 3) + 3;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX(){
    return (double)myCenterX;
  }
  public double getCenterY(){
    return (double)myCenterX;
  }
}
