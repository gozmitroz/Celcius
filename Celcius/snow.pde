// Snow size and amount
int quantity = 150;
Snow[] snow = new Snow[quantity];
int minFlakeSize = 1;
int maxFlakeSize = 5;


class Snow {
 // float speed = 1;
  int sizeFlake;
  int min, max;
  int direction;
  float x, y;
  //float rotation;
  
  
  Snow(int _sizeFlake, int _min, int _max, int _direction, float _x, float _y) {
   // speed = _speed;
    sizeFlake = _sizeFlake;
    min = _min;
    max = _max;
    direction = _direction;
    x = _x;
    y = _y;
    //rotation = _rotation;
  }
  
  
  void display() {
    ellipse(x, y, sizeFlake, sizeFlake);
  }
  
  
  void fall() {
    if(direction == 0) {
      x += map(sizeFlake, min, max, .1, .5);
    } else {
      x -= map(sizeFlake, min, max, .1, .5);
    }
    
    
    y += sizeFlake + direction; 
    
    if(x > width + sizeFlake || x < -sizeFlake || y > height + sizeFlake) {
      x = random(0, width);
      y = -sizeFlake;
    }
  }
}
