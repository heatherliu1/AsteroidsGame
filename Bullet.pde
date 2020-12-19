class Bullet extends Floater{
  private double dRadians;
  public Bullet(){
    myCenterX = spac.getMyX();
    myCenterY = spac.getMyY();
    myPointDirection = spac.getMyPD();
    dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians) + myDirectionX;
    myDirectionY = 5*Math.sin(dRadians) + myDirectionY;
  }
  public void show(){
    fill(180);
    stroke(180);
    ellipse((float)myCenterX, (float)myCenterY, 5,5);
  }
  public void move ()
  {      
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
    bull.remove(this);    
    }    
    else if (myCenterX<0)
    {     
      bull.remove(this);   
    }    
    if(myCenterY >height)
    {    
      bull.remove(this); 
    } 
    
    else if (myCenterY < 0)
    {     
      bull.remove(this);    
    }   
  }   
  public float getMyX(){
    return (float)myCenterX;
  }
  public float getMyY(){
    return (float)myCenterY;
  }
}
