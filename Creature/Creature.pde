PVector theMouse, thePrevMouse; 
PImage madBlob, happyBlob, currentBlob, grass, bHappyBlob, bSadBlob;

void setup(){
  size(612, 612, P2D);
  fill(0,200,0);
  madBlob = loadImage("madBlob.png");
  madBlob.resize(width/6, height/6);
  happyBlob = loadImage("happyBlob.png");
  happyBlob.resize(width/6, height/6);
  grass = loadImage("grass.jpg");
  bSadBlob = loadImage("bSadBlob.png");
  bSadBlob.resize(width/6, height/6);
  bHappyBlob = loadImage("bHappyBlob.png");
  bHappyBlob.resize(width/6, height/6);

  theMouse = new PVector(); //PVector location
  thePrevMouse = new PVector(); //PVector location
}


void draw(){
  
  background(grass); //Set background to grass

   if (keyPressed) { //https://processing.org/reference/key.html
    if (key == 'b' || key == 'B') { //If either b or B is being pressed blue blob appears
        if (mousePressed == true){ //When mouse is pressed, you pet the blob and makes it happy
       theMouse.set(mouseX, mouseY); 
       thePrevMouse.set(pmouseX, pmouseY);
       currentBlob = bHappyBlob;
  }
        else{ //If you move your mouse, without pressing the mouse, the blob chases after it with a sad face
      theMouse.set(mouseX, mouseY); 
      thePrevMouse.set(pmouseX, pmouseY);
      currentBlob = bSadBlob;
    }
    }
  } else { //The blob defult colour is purple if b is not pressed
      if (mousePressed == true){
    theMouse.set(mouseX, mouseY); 
    thePrevMouse.set(pmouseX, pmouseY);
    currentBlob = happyBlob;
  }
       else{ //The purple blob gets mad when you don't pet it
      theMouse.set(mouseX, mouseY); 
      thePrevMouse.set(pmouseX, pmouseY);
      currentBlob = madBlob;
    }
  }


  imageMode(CENTER); 
  image(currentBlob,theMouse.x,theMouse.y); //Moving the blob
  
}
