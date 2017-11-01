ten[] others;
ten center = new ten(0, 0);
sen[] waku;

void setup() {

  size(400, 400);

  others = new ten[64];

  float f = 15;
  for (int i = 0; i < others.length; i++) {
    others[i] = new ten(
      (0.5+i/8)*50+random(-f, f), 
      (0.5+i%8)*50+random(-f, f) );
  }

  sen[] _waku = {
    new sen(1, 0, 0), 
    new sen(0, 1, 0), 
    new sen(1, 0, width), 
    new sen(0, 1, height)
  };
  waku = _waku;
}

void draw() {
  background(255);

  ten[] hoge = new ten[others.length-1];

  for (int j = 0; j<others.length; j++) {
    int counter = 0;
    for (int i = 0; i < others.length; i++) {
      if (i == j) {
        center = others[i];
      } else {
        hoge[counter] = others[i];
        counter++;
      }
    }

    bunkatsu(center, hoge);
  }
}