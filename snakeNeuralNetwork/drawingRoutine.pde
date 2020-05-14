//for troubleshooting and visualizing purpose only
void drawGrid(){
  stroke(2);
  for(int y= 1; y< 10; y++){
    line(0, y*50, 500, y*50);
  }
  for(int x=1; x<10; x++){
    line(x*50, 0, x*50, 500);
  }
}
//draws the body of the snake
void drawSnake(){
  float[] x= new float[2];
  for(int row=0; row<bodylength; row++){
   for(int col=0; col<2; col++){
     x[col] = snake[row][col];
   }
   //stroke(255);
   //strokeWeight(1);
   fill(#5E7AFC);
   rect((x[0]-1)*50, (x[1]-1)*50, 50, 50);
   //print(x[0],"\n",x[1]);
   noFill();
   noStroke();
 }
}
