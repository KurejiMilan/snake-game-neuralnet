class fruit{
  private
    byte x;
    byte y;
    color c;
  public
     fruit(color m){
         c= m;
     }
     void setFruitPos(){
       //function to set the fruit coordinate by snacnning 
       //the snake body coordinates so it doesn't collide
       boolean unset =true;
      do{
         boolean skip=false;
         x = byte(random(1, 11));
         y = byte(random(1, 11));
         for(int row=0; row<bodylength; row++){
           float[] pos= new float[2];
           for(int col= 0; col<2; col++){
             pos[col]= snake[row][col];
           }
           if((x!=ceil(pos[0]))&&(y!=ceil(pos[1]))){
             skip = true;
           }
         }
         if(skip)unset=false;
       }while(unset);
       print(x,"\n",y,"\n");
     }
     void drawFruit(){
       stroke(c);
       fill(c);
       ellipse((x-.5)*50,(y-.5)*50,40,40);
       noStroke();
       noFill();
     }
     byte getFruitX(){
       return x;
     }
     byte getFruitY(){
       return y;
     }
}
