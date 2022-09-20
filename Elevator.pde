int x;

//Buttons
Button btn1;
Button btn2;
Button btn3;
Button btn4;
Button btn5;
Button btn6;
Button btn7;

//timer variables
int savedTime;
int totalTime; 
int passedTime; 
boolean pauseTime; //pause timer


void setup(){
  size(800, 850); //size of screen
  background(92, 64 , 51); //color of background

  //colorMode(RGB, 360, 100, 100);
  x = 10;
  
  //setting value for timer variables
  savedTime = millis();
  totalTime = 7000;
  pauseTime = false;


  //Background Panel
  fill(190);
  rect(0, 300, 1000, 500);
  
  //Elevator Number Background
  fill(210);
  rect(0, 0, 800, 200);

  //Common Use Panel Background
  fill(210);
  rect(0, 300, 250, 500);

  //Emergency Use Panel Background
  fill(210);
  rect(250, 385, 350, 115);
  
  //Firefgihter Use Panel Background
  fill(210);
  rect(585, 300, 215, 200);
  fill(170);
  rect(600, 315, 185, 170);
  
  //Service Use Panel
  fill(210);
  rect(585, 500, 215, 300);
  fill(170);
  rect(600, 515, 185, 250);
  
  //--- FIRE SAFETY ---
  fill(250, 250, 250);
  rect(440, 510, 135, 180, 20);
  fill(0);
  textSize(18);
  text("In Case Of Fire", 456, 540);
  textSize(15);
  text("Elevators are out", 456, 565);
  text("of service", 480, 585);
  text("USE EXIT", 478, 680);
  
  //---  COMMMON USE PANEL ---
  //3rd floor
  fill(75);
  rect(75, 400, 100, 35, 5); // posX, posY, width, height, arc corner
  fill(250, 250, 250);
  btn1 = new Button(138, 405, 25, 25, "");//button 
  textSize(30);
  text("3", 99, 428); 

  //2nd floor
  fill(75);
  rect(75, 450, 100, 35, 5);
  fill(250, 250, 250);
  btn2 = new Button(138, 455, 25, 25, "");
  textSize(30);
  text("2", 99, 478); 

  //1st floor
  fill(75);
  rect(75, 500, 100, 35, 5);
  fill(250, 250, 250);
  btn3 = new Button(138, 505, 25, 25, "");
  textSize(30);
  text("1", 109, 528); 

  //open door
  fill(75);
  rect(75, 550, 100, 35, 5);
  fill(250, 250, 250);
  triangle(110, 560, 125, 570, 110, 580); //x1, y1, x2, y2, x3, y3 right triangle
  fill(250, 250, 250);
  triangle(95, 560, 80, 570, 95, 580); //x1, y1, x2, y2, x3, y3 left triangle
  fill(250, 250, 250);
  rect(100, 560, 5, 20); //middle line
  fill(250, 250, 250);
  btn4 = new Button (138, 555, 25, 25, "");

  //close door
  fill(75);
  rect(75, 600, 100, 35, 5);
  fill(250, 250, 250);
  triangle(80, 610, 95, 620, 80, 630); //x1, y1, x2, y2, x3, y3 left triangle
  fill(250, 250, 250);
  triangle(125, 610, 110, 620, 125, 630); //x1, y1, x2, y2, x3, y3 right triangle
  fill(250, 250, 250);
  rect(100, 610, 5, 20); //middle line
  fill(250, 250, 250);
  btn5 = new Button(138, 605, 25, 25, "");
  
  //--- ELEVATOR NUMBER PANEL ---
  fill(75);
  rect(20, 20, 230, 160); //Dark Panel
  fill(10, 10, 90);
  rect(35, 35, 200, 110, 50); //blue digital panel
  fill(250, 250, 250);
  textSize(50);
  text("1", 120, 105); //digital number
  textSize(15);
  text("Elevator #1 | Capactity: 2500 lbs.", 35, 170);
  

  //--- EMERGENCY USE PANEL ---
  //FIRE button
  fill(200, 0, 0); //red button panel
  rect(420, 400, 150, 35, 5); // posX, posY, width, height, arc corner
  fill(250, 250, 250);
  btn6 = new Button(530, 405, 25, 25, "");
  textSize(25);
  text("FIRE", 470, 428);

  //HELP button
  fill(300, 185, 0); //yellow button panel
  rect(420, 450, 150, 35, 5); // posX, posY, width, height, arc corner
  fill(250, 250, 250);
  btn7 = new Button(530, 455, 25, 25, "");
  textSize(25);
  text("HELP", 470, 478);

  //LED for response
  fill(85);
  rect(250, 385, 130, 115); // gray panel
  fill(250, 0, 80);
  ellipse(270, 408, 15, 15); //button
  fill(250, 250, 250);
  textSize(14);
  text("Blinking indicaites \n call is answered", 260, 435);

  //--- FIREFIGHTER USE PANEL ---
  textSize(20);
  fill(500, 0, 0);
  text("FIREFIGHTERS'", 635, 340);
  fill(500, 0, 0);
  text("OPERATION", 635, 360);
  fill(250, 250, 250);
  ellipse(690, 465, 30, 30); //Key button
  textSize(15);
  fill(0, 0, 0);
  text("{|", 686, 470);
  text("|}", 686, 470);
  text("||", 686, 470);
  
  //--- SERVICE USE PANEL ---
  textSize(20);
  fill(20, 20, 80);
  text("OPERATOR PANEL", 620, 545);
  
  fill(75);
  rect(640, 560, 100, 35, 5);
  fill(40, 40, 40);
  ellipse(718, 578, 25, 25); //Key button
  textSize(13);
  fill(200, 200, 200);
  text("Run ", 675, 575);
  text("Stop ", 675, 593);
  
  fill(75);
  rect(640, 610, 100, 35, 5);
  fill(40, 40, 40);
  ellipse(718, 628, 25, 25); //Key button
  textSize(13);
  fill(200, 200, 200);
  text("Light & Fan ", 645, 625);
  text("Light ", 675, 640);
  
  fill(75);
  rect(640, 660, 100, 35, 5);
  fill(40, 40, 40);
  ellipse(718, 678, 25, 25); //Key button
  fill(200, 200, 200);
  textSize(10);
  text("Indep. Service", 645, 680 );
  textSize(12);
  text("ON", 685, 671);
  text("OFF", 685, 693);
  
  fill(75);
  rect(640, 710, 100, 35, 5);
  fill(40, 40, 40);
  ellipse(718, 728, 25, 25); //Key button
  fill(200, 200, 200);
  textSize(10);
  text("Hoistway", 645, 725 );
  text("Enable", 645, 735 );
  textSize(12);
  text("ON", 685, 721);
  text("OFF", 685, 743);
}


void draw() {
  //Main floor Star
  fill(0);
  stroke(255);
  strokeWeight(2);
  beginShape();
  vertex(90, 508); //top point
  vertex(93, 514); //NE angle
  vertex(100, 517); //upper right point
  vertex(96, 521); //SE angle
  vertex(98, 531); //lower right point
  vertex(90, 525); //bottom angle
  vertex(82, 531); //lower left point
  vertex(84, 521); //SW angle
  vertex(80, 517); //upper left point
  vertex(87, 514); //NW angle
  endShape(CLOSE);
  
  //SPEAKER
  fill(110);
  stroke(255);
  strokeWeight(0);
  beginShape();
  vertex(300, 30);
  vertex(360, 30);
  vertex(390, 50);
  vertex(390, 100);
  vertex(360, 120);
  vertex(300, 120);
  vertex(270, 100);
  vertex(270, 50);
  endShape();
  
  //Speaker Lines
  fill(30);
  rect(300, 50, 5, 55, 10);
  rect(327, 50, 5, 55, 10);
  rect(354, 50, 5, 55, 10);
  
  //STOP/RUN KEY
  fill(100);
  stroke(255);
  strokeWeight(1);
  beginShape();
  vertex(710, 571);
  vertex(724, 585);
  endShape(CLOSE);
  
  //LIGHT & FAN KEY
  fill(100);
  stroke(255);
  strokeWeight(1);
  beginShape();
  vertex(710, 621);
  vertex(724, 635);
  endShape(CLOSE);
  
  //INDEP. SERVICE KEY
  fill(100);
  stroke(255);
  strokeWeight(1);
  beginShape();
  vertex(724, 671);
  vertex(710, 685);
  endShape(CLOSE);
  
  //HOISTWAY ENABLED KEY
  fill(100);
  stroke(255);
  strokeWeight(1);
  beginShape();
  vertex(724, 721);
  vertex(710, 735);
  endShape(CLOSE);
  
  //Button interactions display
  btn1.display();
  btn2.display();
  btn3.display();
  btn4.display();
  btn5.display();
  btn6.display();
  btn7.display();
  
  //update mouse position
  update(mouseX, mouseY);
  
  //checks to see is mouse is over one of the buttons
  if(btn1.rectOver){
    btn1.currentColor = btn1.selectedColor;
  }
  else if(btn1.rectOver == false && btn1.selected == false ){
    btn1.currentColor = btn1.defaultColor;
  } 
  
  if(btn2.rectOver){
    btn2.currentColor = btn2.selectedColor;
  }
  else if(btn2.rectOver == false && btn2.selected == false ){
    btn2.currentColor = btn2.defaultColor;
  }
  
  if(btn3.rectOver){
    btn3.currentColor = btn3.selectedColor;
  }
  else if(btn3.rectOver == false && btn3.selected == false ){
    btn3.currentColor = btn3.defaultColor;
  } 
  
  if(btn4.rectOver){
    btn4.currentColor = btn4.selectedColor;
  }
  else if(btn4.rectOver == false && btn4.selected == false ){
    btn4.currentColor = btn4.defaultColor;
  } 
  
  if(btn5.rectOver){
    btn5.currentColor = btn5.selectedColor;
  }
  else if(btn5.rectOver == false && btn5.selected == false ){
    btn5.currentColor = btn5.defaultColor;
  } 
  
  if(btn6.rectOver){
    btn6.currentColor = btn6.selectedColor;
  }
  else if(btn6.rectOver == false && btn6.selected == false ){
    btn6.currentColor = btn6.defaultColor;
  } 
  
  if(btn7.rectOver){
    btn7.currentColor = btn7.selectedColor;
  }
  else if(btn7.rectOver == false && btn7.selected == false ){
    btn7.currentColor = btn7.defaultColor;
  } 
  
  
  //if any button was selected, and time passed is 7 seconds, then change back to default color
  if(passedTime >= totalTime && (btn1.selected == true) && pauseTime == false ){
      btn1.currentColor = btn1.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("3");
      resetTimer();
   } else { timer(); } 
   
   if(passedTime >= totalTime && (btn2.selected == true) && pauseTime == false) {
      btn2.currentColor = btn2.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("2");
      resetTimer();
   } else { timer(); }
   
   if(passedTime >= totalTime && (btn3.selected == true) && pauseTime == false) {
      btn3.currentColor = btn3.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("1");
      resetTimer();
   } else { timer(); }
   
   if(passedTime >= totalTime && (btn4.selected == true) && pauseTime == false) {
      btn4.currentColor = btn4.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("OPEN");
      resetTimer();
   } else { timer(); }
   
   if(passedTime >= totalTime && (btn5.selected == true) && pauseTime == false) {
      btn5.currentColor = btn5.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("CLOSE");
      resetTimer();
   } else { timer(); }
   
   if(passedTime >= totalTime && (btn6.selected == true) && pauseTime == false) {
      btn6.currentColor = btn6.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("FIRE");
      resetTimer();
   } else { timer(); }
   
   if(passedTime >= totalTime && (btn7.selected == true) && pauseTime == false) {
      btn7.currentColor = btn5.defaultColor;
      print("7 seconds has passed\n"); //testing timer
      newText("HELP");
      resetTimer();
   } else {timer(); }
}

//stops timer and resets
void resetTimer(){
     savedTime = millis();
}

//keeps time
void timer() {
     passedTime = millis() - savedTime;
}

void newText(String t){
    fill(10, 10, 90); // dark blue
    rect(35, 35, 200, 110, 50); // blue screen
    //Text Implementation
    textSize(50);
    fill(250, 250, 250);
    text(t, 125, 105);
  }

//checks if any buttons are clicked
void mouseClicked(){
  btn1.clicked( mouseX, mouseY);
  btn2.clicked( mouseX, mouseY);
  btn3.clicked( mouseX, mouseY);
  btn4.clicked( mouseX, mouseY);
  btn5.clicked( mouseX, mouseY);
  btn6.clicked( mouseX, mouseY);
  btn7.clicked( mouseX, mouseY);
}

//updates the buttons if the mouse is over the one of the buttons
void update(int x, int y) {
    if (overRect(btn1.x, btn1.y, btn1.w, btn1.h) ) {
    btn1.rectOver = true;
  } else if (overRect(btn2.x, btn2.y, btn2.w, btn2.h)){
    btn2.rectOver = true;
  } else if (overRect(btn3.x, btn3.y, btn3.w, btn3.h)) {
    btn3.rectOver = true;
  } else if (overRect(btn4.x, btn4.y, btn4.w, btn4.h)) {
    btn4.rectOver = true;
  } else if (overRect(btn5.x, btn5.y, btn5.w, btn5.h)) {
    btn5.rectOver = true;
  } else if (overRect(btn6.x, btn6.y, btn6.w, btn6.h)) {
    btn6.rectOver = true;
  } else if (overRect(btn7.x, btn7.y, btn7.w, btn7.h)) {
    btn7.rectOver = true;
  } else {
    btn1.rectOver = false;
    btn2.rectOver = false;
    btn3.rectOver = false;
    btn4.rectOver = false;
    btn5.rectOver = false;
    btn6.rectOver = false;
    btn7.rectOver = false;
  }
}

//checks to see if it is over rect
boolean overRect(float x, float y, float width, float height) {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
