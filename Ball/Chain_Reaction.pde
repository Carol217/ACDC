class Chain_Reaction {
  Ball[] balls;
  boolean reactionStarted;

  void setup() {
    size(600,600);
    reactionStarted = false; //brrrrrrat
    balls = new Ball[25];
    for (int i=0; i < balls.length; i++)
      balls[i] = new Ball();
  }

  void draw() {
    background(0);
    for (int i = 0; i < balls.length; i++) {
      balls[i].drawMe();
    }
  }

  void mouseClicked() {
    if (!reactionStarted ) {
      balls[0].x = mouseX;
    }
  }
}
