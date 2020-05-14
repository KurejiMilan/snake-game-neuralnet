
//moves the snake in every frame
void moveSnake(){
  if(direction == "left"){
    snake[0][0]-=.5;
  }else  if(direction == "right"){
    snake[0][0]+=.5;
  }else  if(direction == "up"){
    snake[0][1]-=.5;
  }else  if(direction == "down"){
    snake[0][1]+=.5;
  }
}

//test if the food is eaten or not
boolean foodEaten(){
  byte x= apple.getFruitX();
  byte y= apple.getFruitY();
  if((ceil(snake[0][0])==x)&&(ceil(snake[0][1])==y)){
    bodylength+=1;
    return true;
  }else{
    return false;
  }
}
//adds a new block when food is eaten
void addBody(){

}

//shift the position of block
void shiftBody(){

}

//test if the snake has collapsed with the wall or not
boolean wallSmash(){
  if((snake[0][0]==11)||(snake[0][0]==0)||(snake[0][1]==11)||(snake[0][1]==0)){
    return true;
  }else{
    return false;
  }
}
