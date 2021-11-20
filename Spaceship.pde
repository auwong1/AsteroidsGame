class Spaceship extends Floater{
  public Spaceship(){
    myColor = color(150);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = 15;
    yCorners[0] = 0;
    xCorners[1] = -10;
    yCorners[1] = -5;
    xCorners[2] = 0;
    yCorners[2] = 0;
    xCorners[3] = -10;
    yCorners[3] = 5;
  }
  public void setXSpeed(double x){
    myXspeed = x;
  }
  public void setYSpeed(double y){
    myYspeed = y;
  }
  public void setmyCenterX(int a){
    myCenterX = a;
  }
  public void setmyCenterY(int b){
    myCenterY = b;
}
