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
int col;
int col1;
int col2;
int gameover;
int win;
void setup() {
  x = 100;
  y = 250;
  x1 = 250;
  x2 = 400;
  y3 = 50;
  col=0;
  col1=0;
  col2=0;
  gameover=1000;
  win=1000;
  

  a=int(random(1, 4));
  b=int(random(1, 4));
  c=int(random(1, 4));

  s=14;
  s1=12;
  s2=16;

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
  strokeWeight(3);
  fill(col);
  
  ellipse(x, y, 125, 125);
  fill(col1);
 
  ellipse(x1, y, 125, 125);
  fill(col2);
 
  ellipse(x2, y, 125, 125);
  noStroke();

  // Allow cups to move
  if (y3==y) {
    x=x+s;
    x1=x1+s1;
    x2=x2+s2;

    // Allow the cups to bounce from side to side
    if (x>440) {
      s=-14;
    }
    if (x1>440) {
      s1=-12;
    }
    if (x2>440) {
      s2=-16;
    }

    if (x<60) {
      s=+14;
    }
    if (x1<60) {
      s1=+12;
    }
    if (x2<60) {
      s2=+16;
    }
  }

  if (a==b) {
    a=int(random(1, 4));
  }
  if (a==c) {
    a=int(random(1, 4));
  }
  if (b==c) {
    b=int(random(1, 4));
  }

  // Make the cups to stop moving
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

  // The time that the cups move for
  if (t>7) {
    if (x>a-10&&x<a+10) {
      s=0;
    }
    if (x1>b-10&&x1<b+10) {
      s1=0;
    }
    if (x2>c-10&&x2<c+10) {
      s2=0;
    }
  }

  println("a;"+a);
  println("b;"+b);
  println("c;"+c);
  println("t;"+t);
   fill(0,129,255);
   textSize(30);
   text("Congrats you win",win,150);
       text("GAME OVER",gameover,150);
       if(win<500||gameover<500){
         noLoop();
       }
}

void mouseClicked() {
if(t>7){
  if (mouseX<x+62.5&&mouseX>x-62.5&&mouseY>187.5&&mouseY<312.5) {
    col=256;
   
      win=100;
  }
  if (mouseX<x1+62.5&&mouseX>x1-62.5&&mouseY>187.5&&mouseY<312.5) {
    col1=256;
    
gameover=100;
  }
  if (mouseX<x2+62.5&&mouseX>x2-62.5&&mouseY>187.5&&mouseY<312.5) {
    col2=256;
       gameover=100;
  }
}
}