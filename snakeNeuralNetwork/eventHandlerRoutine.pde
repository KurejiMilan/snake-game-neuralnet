void keyPressed(){
  //37 == left key
  //38 == up key
  //39 == right key
  //40 == down key
    if(keyCode == 37){
      direction = "left";
      snake[0][0]=ceil(snake[0][0]);
      snake[0][1]=ceil(snake[0][1]);
    }else if(keyCode == 38){
      direction = "up";
      snake[0][0]=ceil(snake[0][0]);
      snake[0][1]=ceil(snake[0][1]);
    }else if(keyCode == 39){
      snake[0][0]=ceil(snake[0][0]);
      snake[0][1]=ceil(snake[0][1]);
      direction = "right";
    }else if(keyCode == 40){
      direction = "down";
      snake[0][0]=ceil(snake[0][0]);
      snake[0][1]=ceil(snake[0][1]);
    }
}
