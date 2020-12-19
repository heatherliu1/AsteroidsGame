Star[] nightSky = new Star [200];
ArrayList <Asteroid> liu = new ArrayList <Asteroid>();
Spaceship spac = new Spaceship();
ArrayList <Bullet> bull = new ArrayList <Bullet>();
int a = 10;
int lev = 1;
public void setup()
{
  size(500,500);
  background(0);
  for(int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for(int p = 0; p < a; p++)
  {
    liu.add(new Asteroid());
  }
}
public void draw() 
{
 background(0);
  for(int i = 0; i < nightSky.length; i++)
    {
      nightSky[i].show();
    }
  for(int p = 0; p < liu.size(); p++)
    {
      liu.get(p).show();
      liu.get(p).move();
      if(dist(liu.get(p).getMyX(), liu.get(p).getMyY(), spac.getMyX(), spac.getMyY()) < 20){
          liu.remove(p);
          break;
        }
        for(int k = 0; k < bull.size(); k++)
          if(dist(liu.get(p).getMyX(), liu.get(p).getMyY(), bull.get(k).getMyX(), bull.get(k).getMyY()) < 20){
            liu.remove(p);
            bull.remove(k);
            break;
        }
    }
  for(int k = 0; k < bull.size(); k++){
      bull.get(k).show();
      bull.get(k).move();
    }
  spac.move();
  spac.show();
  if(liu.size() == 0){
    for(int p = 0; p < (a+lev*5-5); p++)
    {
      liu.add(new Asteroid());
    }
    lev++;
  }
}
public void keyPressed(){
  if(key == 's'){
      spac.stop();
      spac.hyperSpace();
  }else if(key == 'w'){
      spac.accelerate(.5);
  }else if(key == 'a'){
      spac.turn(-30);
  }else if(key == 'd'){
      spac.turn(30);
    }
   else if(key == ' '){
      if(bull.size() < 8)
        bull.add(new Bullet());
   }
  }

