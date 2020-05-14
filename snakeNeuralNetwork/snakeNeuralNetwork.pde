int bodylength = 1;
fruit apple = new fruit(#FA1231);
float[][] snake = new float[100][2];
String direction = "none";
boolean gameNotOver = true;

void setup(){
  size(500, 500);
  background(255);
  snake[0][0] = byte(random(1, 11));
  snake[0][1] = byte(random(1, 11));
  apple.setFruitPos();
  //print(snake[0][0],"\n");
  //print(snake[0][1]);
  //print("\nthis part is done\n");
  smooth(4);
  frameRate(14.5);
  delay(500);
}

void draw(){
  background(255);
  //drawGrid();
  drawSnake();
  apple.drawFruit();
  if(gameNotOver){
      moveSnake();
      if(foodEaten()){
        apple.setFruitPos();
      }
      if(wallSmash()){
        gameNotOver = false;
      }
  }else{
    textSize(45);
    fill(#13BF1D);
    text("Ops game over", 70, 240);
    delay(1000);
    snake[0][0] = byte(random(1, 11));
    snake[0][1] = byte(random(1, 11));
    direction = "none";
    apple.setFruitPos();
    gameNotOver = true;
    noFill();
  }
}
