class Button{
  ///INSTANCE VARIABLES
  float x,y; //position
  float w,h; //size
  boolean selected; //is the button selected / on? true/false
  boolean clicked;
  color selectedColor, defaultColor, currentColor, rectHighlight;
  String label; 
  
  int rectX, rectY;
  int rectSize = 90;
  boolean rectOver = false;

  ///CONSTRUCTORS - no return type declared - match Class-name
  Button(float x, float y, float w, float h, String label ){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
    selected = false;
    clicked = false;
    colorMode(HSB);
    selectedColor = color(50, 50, 50); 
    defaultColor = color(230); 
    currentColor = defaultColor;
    rectHighlight = color(220, 200, 120);
    colorMode(RGB);
    rectX = width/2-rectSize-10;
    rectY = height/2-rectSize/2;
  }

  ///METHODS
  //displays the buttons 
  void display(){
    stroke(1);
    fill( currentColor);
    rect( x, y, w, h, 10);
    fill( 0);//black for text
    textAlign(CENTER);
    text( label, x + w/2, y + (h/2));
  }
  
  /*
  //replaces the text on the blue screen
  void newText(String t){
    fill(10, 10, 90); // dark blue
    rect(35, 35, 200, 110, 50); // blue screen
    //Text Implementation
    textSize(50);
    fill(250, 250, 250);
    text(t, 125, 105);
  }*/

  //checks to see if mouse clicked on the button
  void clicked( int mx, int my){
    if( mx > x && mx < x + w  && my > y && my < y+h){
      //mouse has been clicked
      selected = !selected;  //toggle the value between true and false
      clicked = !clicked;
      if(selected){
          currentColor = selectedColor;
      }else{
          currentColor = defaultColor;
        }

      }  
  }
}  //end Button class
