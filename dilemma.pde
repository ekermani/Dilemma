int step = 0;
PFont f;
boolean insideButtonLeft = false;
boolean insideButtonRight = false;

void setup(){
  size(600,600);
  background(0);
  f = createFont("AmericanTypewriter", 16,true);
  
  println("Year 2019.");
  println(" ");
  println("Two officers in the US military become close friends: Officer Bordello and Officer Aziz");
  println("Choose your character.");
  println(" ");
  println("Are you Officer Bordello or Officer Aziz?");
  println("Press a for Aziz, b for Bordello");
}

void draw(){ 
  background(0);
  textFont(f);
  textSize(18);
  fill(255);
  
  //military decoration-left
  fill(0,0,255); //blue
  rect(75,453,200,45);
  fill(255,0,0); //red
  rect(75,407,200,45);
  fill(104,34,139); //purple
  rect(140,407,25,45);
  fill(104,34,139); //purple
  rect(170,407,25,45);
  fill(104,34,139); //purple
  rect(200,407,25,45);
  
  //add medals(images)
  
  //left button
  fill(218,165,32);
  rect(75,500,200,45); //rect(x,y,w,h)
  fill(0);
  text("A Z I Z",145,530); //text(c,x,y)
  
  //right button
  fill(218,165,32);
  rect(325,500,200,45);  
  fill(0);
  text("B O R D E L L O",365,530); //text(c,x,y)
  
  //military decoration-right
  fill(0,100,0); //green
  rect(325,453,200,45);
  fill(174,238,238); //light blue
  rect(325,407,200,45);
  fill(255,255,0); //yellow
  rect(390,407,25,45);
  fill(255,255,0); //yellow
  rect(420,407,25,45);
  fill(255,255,0); //yellow
  rect(450,407,25,45);
  
  fill(255);
  text("Year 2019.",100,100);
  text("Two officers in the US military become close friends: Officer Bordello and Officer Aziz",100,120,500,100);
  text("Choose your character.",100,200);
  text("Are you Officer Bordello or Officer Aziz?",100,250);
 
}

void inside(){
  if(mousePressed){
    if(mouseX>75&&mouseX<275&&mouseY>500&&mouseY<545){
      insideButtonLeft = true;
    }else if(){
      insideButtonRight = true;
    }
  } 
}

void mousePressed(){
  if(insideButtonLeft){
    text("Good choice, soldier!");
    text("Your duty is to your country, the United States of America");
    text("Make sure you follow orders!");
    text("You come across some classified military documents in a folder, labeled NUCLEAR PLAN");
    println("Do you take the docs and read them?");
    println("Press y for yes, n for no");
    insideButtonLeft = false;
  }else if(insideButtonRight){
      
    insideButtonLeft = false;

  }
}

void keyPressed(){
  if ( key == 'a' && step == 0){
    step = 1;
    println("Good choice, soldier!");
    println("Your duty is to your country, the United States of America");
    println("Make sure you follow orders!");
    println(" ");
    println("You come across some classified military documents in a folder, labeled NUCLEAR PLAN");
    println(" ");
    println("Do you take the docs and read them?");
    println("Press y for yes, n for no");
 
  }else if ( key == 'b' && step == 0){
    step = 1;
    println(" ");
    println("Good choice, soldier!");
    println("Your duty is to your country, the United States of America");
    println("Make sure you follow orders!");
    println(" ");
    println("You come across some classified military documents in a folder, labeled NUCLEAR PLAN");
    println(" ");
    println("Do you take the docs and read them?");
    println("Press y for yes, n for no");
    
  }else if (key == 'y' && step == 1){
     println(" ");
     println("The materials outline an immediate plan to bomb Pakistan.");
     println("This is huge! You tell your friend.");
     println("Your friend urges you to leak the information to the press.");
     println(" ");
     println("Do you?");
     println("Press 1 for yes, 2 for no");
     step = 2;
     
  }else if (key == 'n' && step == 1){
     println(" ");
     println("You ignore the docs and await world destruction.");
     
  }else if (key == '1' && step == 2){
     println(" ");
     println("Now the world knows of the docs, but also the military finds out the leak came from your friend Bordello's computer.");
     println("The military police has evidence of the leak but not of you stealing the information.");
     println(" ");
     println("Do you confess?");
     
     
  }else if (key == '4' && step == 2){
     println(" ");
     println("You ran to the next chamber and found gold!");
     println("You win!");
  }else if (key == 'x' && step == 2){
     println(" ");
     println("The bear is stronger.");
     println("You die.");
  }else if (key == 'o' && step == 2){
     println(" ");
     println("Smart choice!");
     println("You come to a fork in the path.");
     println("Press c to continue, press e to exit the cave.");
     step =3;
  }else if (key == 'c' && step == 3){
     println(" ");
     println("WTF! It's a Mummy!");
     println(" ");
     println("Do you fight or the run?");
     println("Press 3 to fight, 4 to run");
     step = 2;
  }else if ( key == 'e' && step == 3){
    step = 1;
    println("You have left the cave, watch for Pirates!");
  }else{
    println("That's not an option. Try again.");
    }
  
}  
//click button, then step = 0
//mouse inside button, then mousePressed
//mouseX > posX
//mouseX <posX + w
//mouseY >posY
//mouseY <posY +h
//mousePress click Aziz or Bordello
//void mousePressed(){
//  if (mouseX < width/2 && mouseY > height/2 && step == 0) {
//      step = 1;
//      background(0);
//      text("x",100,100);
//insideButtonLeft
//mouseX>posX && (mouseX < (posX +w)) && mouseY > posY && (mouseY < (posY + h)) && step == 0

//button left is pressed 
//add steps
//if ( // click button left && step == 0){