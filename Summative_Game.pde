float x;
float y;
float x1;
float x2;
float y3;
int s;
int s1;
int s2;
float t;
int a;
int b;
int c;
void setup() {
  x = 100;
  y = 250;
  x1 = 250;
  x2 = 400;
  y3 = 50;

  a=int(random(1, 4));
  b=int(random(1, 4));
  c=int(random(1, 4));

  s=7;
  s1=3;
  s2=9;

  t=0;
  // Canvas
  size(500, 500);
}

void draw() {
  background(255);
  t=t+0.016;
  // Showing the ball in the beginning
  if (y3>y) {
    y3=y;
  } else {
    y3=y3+1;
  };

  // The Ball
  fill(255, 0, 0);
  ellipse(x, y3, 65, 65);

  // The Cups
  fill(100, 100, 255);
  ellipse(x, y, 125, 125);
  ellipse(x1, y, 125, 125);
  ellipse(x2, y, 125, 125);

  // Allow cups to move
  if (y3==y) {
    x=x+s;
    x1=x1+s1;
    x2=x2+s2;

    // Allow the cups to bounce from side to side
    if (x>440) {
      s=-7;
    }
    if (x1>440) {
      s1=-3;
    }
    if (x2>440) {
      s2=-9;
    }

    if (x<60) {
      s=+7;
    }
    if (x1<60) {
      s1=+3;
    }
    if (x2<60) {
      s2=+9;
    }
  }

  if (a==b) {
    a=int(random(1, 4));
  }
  if (b==c) {
    b=int(random(1, 4));
  }

  if (a==1) {
    a=100;
  }
  if (a==2) {
    a=250;
  }
  if (a==3) {
    a=400;
  }

  if (b==1) {
    b=100;
  }
  if (b==2) {
    b=250;
  }
  if (b==3) {
    b=400;
  }

  if (c==1) {
    c=100;
  }
  if (c==2) {
    c=250;
  }
  if (c==3) {
    c=400;
  }

  if (t>7) {
    if (x==a) {
      s=0;
    }
    if (x1==b) {
      s1=0;
    }
    if (x2==c) {
      s2=0;
    }
  }

  println("a;"+a);
  println("b;"+b);
  println("c;"+c);
}