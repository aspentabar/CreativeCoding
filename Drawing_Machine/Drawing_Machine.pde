//Drawing Machine - Global Warming:

//0 black
//255 white

  //Fields:
  
  //Booleans for progress bar:
  boolean isMouseOverSection1 = false;
  boolean isMouseOverSection2 = false;
  boolean isMouseOverSection3 = false;
  boolean isMouseOverSection4 = false;
  
  //Colors for progress bar:
  int section1Color = 0;
  int section2Color = 255;
  int section3Color = 255;
  int section4Color = 255;
  
  //Boolean for current state of scene:
  boolean scene1 = true; //start as true for now but if false can have an intro scene explaining a fact and how the user should use the program
  boolean scene2 = false;
  boolean scene3 = false;
  boolean scene4 = false;
  
  //Arraylist of circles for the snow:
  ArrayList<Snowflake> storm = new ArrayList();
  
  //Image Inports:
  PImage img;
  PImage img1;
  PImage img2;
  PImage img3;
  PImage img4;
  
  //Font Creation:
  PFont Font1;
  

//setup method: Things that stay the same the whole time during the programing running:
void setup() {  
  
  //Size of Board:
  size(1200, 900);
  background(150);
  img = loadImage("pb1.png");
  img1 = loadImage("p111.png");
  img2 = loadImage("p111f.png");
  img3 = loadImage("pb2.png");
  img4 = loadImage("bottle1.png");
  
  //SnowFlake Effect:
  for (int i = 0; i < 1000; i++) {
    storm.add(new Snowflake()); 
  }
  
} //closes setup method





//draw method: draws and runs the program:
void draw() {
  
  //Changes the state of the current scene:
  changeStateOfScene();
  
  //Updates the progress bar:
  controlsProgressBar();
  
} //closes draw method





//controlsProgressBar method: Controls the state of the progress bar:
void controlsProgressBar() {
  
  //Separate rectangles:
  isMouseOverSection1 = mouseX >= 1050 && mouseX <= 1100 && mouseY >= 575 && mouseY <= 700;
  isMouseOverSection2 = mouseX >= 1050 && mouseX <= 1100 && mouseY >= 400 && mouseY < 575;
  isMouseOverSection3 = mouseX >= 1050 && mouseX <= 1100 && mouseY >= 225 && mouseY < 400;
  isMouseOverSection4 = mouseX >= 1050 && mouseX <= 1100 && mouseY >= 50 && mouseY < 225;
  
  
  //Fill each section of the rectangle based on the mouse position:
  if (isMouseOverSection1) {
    section1Color = 0;
    scene1 = true;
  }
  
  if (isMouseOverSection2) {
    section1Color = 0;
    section2Color = 0;
    scene2 = true;
  }
  if (!scene2 && scene1) {
  section2Color = 255;
  }
  
  if (isMouseOverSection3) {
    section1Color = 0;
    section2Color = 0;
    section3Color = 0;
    scene3 = true;
  }
  if (!scene3 && (scene1 || scene2)) {
  section3Color = 255;
  }
  
  if (isMouseOverSection4) {
    section1Color = 0;
    section2Color = 0;
    section3Color = 0;
    section4Color = 0;
    scene4 = true;
  } 
  if (!scene4 && (scene1 || scene2 || scene3)) {
  section4Color = 255;
  }
  
 
   //Sets to isMouseOverSection and scenes to apropiate true/false:
  //Mouse over section 1:
  if (mouseX >= 1050 && mouseX <= 1100 && mouseY >= 575 && mouseY <= 700) {
    isMouseOverSection1 = true;
    isMouseOverSection2 = false;
    isMouseOverSection3 = false;
    isMouseOverSection4 = false;
    scene1 = true;
    scene2 = false;
    scene3 = false;
    scene4 = false;
  } 
  
      //Mouse over section 2:
  if (mouseX >= 1050 && mouseX <= 1100 && mouseY >= 400 && mouseY < 575) {
    isMouseOverSection1 = true;
    isMouseOverSection2 = true;
    isMouseOverSection3 = false;
    isMouseOverSection4 = false;
    scene2 = true;
    scene1 = false;
    scene3 = false;
    scene4 = false;
  }
  
      //Mouse over section 3:
  if (mouseX >= 1050 && mouseX <= 1100 && mouseY >= 225 && mouseY < 400) {
    isMouseOverSection1 = true;
    isMouseOverSection2 = true;
    isMouseOverSection3 = true;
    isMouseOverSection4 = false;
    scene3 = true;
    scene1 = false;
    scene2 = false;
    scene4 = false;
  }

      //Mouse over section 4:
  if (mouseX >= 1050 && mouseX <= 1100 && mouseY >= 50 && mouseY < 225) {
    
    isMouseOverSection1 = true;
    isMouseOverSection2 = true;
    isMouseOverSection3 = true;
    isMouseOverSection4 = true;
    scene4 = true;
    scene1 = false;
    scene2 = false;
    scene3 = false;
  }


  // Draw the rectangle progress bar:
  noStroke();

  //Large white rectangle bar to begin with:
  stroke(5);
  fill(255);
  rect(1050, 50, 50, 700);


  //Upper Section 4:
  fill(section4Color);
  rect(1050, 50, 50, 700);
  
  
  //Upper Section 3:
  fill(section3Color);
  rect(1050, 225, 50, 525);
  
  
  //Bottom Section 2:
  fill(section2Color);
  rect(1050, 400 , 50, 350);
  
  
  //Bottom Section 1:
  fill(section1Color);
  rect(1050, 575 , 50, 175); 
  
  noStroke();
  
  //Lable Text:
  Font1 = createFont("Arial Bold", 18);
  textFont(Font1);
  fill(0);
  textSize(20);
  text("Amount Of CO₂", 1005, 775); 
  text("In The Atmosphere", 985, 800); 
  text("(Parts Per Million)", 995, 825); 
  
  //Units up the progress bar:
  //Bottom
  text("315 ppm", 1105, 583); 
  stroke(0);
  line(1105, 583, 1142, 583);
  //Bottom Middle:
  text("365 ppm", 1105, 408);
  line(1105, 408, 1142, 408);
  //Top Middle:
  text("420 ppm", 1105, 233);
  line(1105, 233, 1142, 233);
  //Top:
  text("470 ppm", 1105, 58);
  line(1105, 58, 1142, 58);
  noStroke();
  

} //closes controlsProgressBar class


//changeStateOfScene method: changes the state of the current scene:
void changeStateOfScene() {
  
  if (scene1) {
    displayScene1();
  }
  if (scene2) {
    displayScene2();
  }
  if (scene3) {
    displayScene3();
  }
  if (scene4) {
    displayScene4();
  }
  
} //closes changeStateOfScene method:


//Scene 1:
void displayScene1() {
  
  //Background sky:
  fill(91, 170, 250);
  rect( 0, 0, width, height);
  
  //Blanket of ice:
  fill(255);
  rect(0, 700, width, height);
   
  //Snow on ground:
  for (int i = 0; i <= width; i = i+60) {
      fill(255);
    circle(i , 700, 75);
  }
  
  
    //Background Ice Towers:
  //Left tower first half:
  beginShape();
  fill(255);
  noStroke();
  vertex(50, 700);
  vertex(75, 300);
  vertex(100, 350);
  vertex(115, 325);
  vertex(160, 550);
  vertex(175, 530);
  vertex(200, 700);
  endShape(CLOSE);
  //left tower second half:
  beginShape();
  fill(255);
  noStroke();
  vertex(150, 700);
  vertex(175, 500);
  vertex(200, 550);
  vertex(215, 425);
  vertex(260, 550);
  vertex(275, 530);
  vertex(300, 700);
  endShape(CLOSE);
  //Right tower:
  beginShape();
  fill(255);
  noStroke();
  vertex(300, 700);
  vertex(375, 500);
  vertex(400, 550);
  vertex(450, 435);
  vertex(470, 550);
  vertex(485, 520);
  vertex(550, 700);
  endShape(CLOSE);
  
  
  //Drawing the snowfall
  drawSnowFlakes();
  
  //Bear:  
  image(img, 400, 450);
  fill(255);
  rect(308, 680, 20, 20);
  
 drawSnowFlakes();
 
} //closes displayScene1 method



//Scene 2:
void displayScene2() {
  fill(0, 200, 200);
  circle(300, 300, 50);
  
  //Background sky:
  fill(91, 170, 250);
  rect( 0, 0, width, height);
  
  //Blanket of ice:
  fill(255);
  rect(0, 700, width, height);
   
  //Snow on ground:
  for (int i = 0; i <= width; i = i+30) {
      fill(255);
    circle(i , 700, 40);
  }
  
  //Background Ice Towers:
  //Left tower first half:
  beginShape();
  fill(255);
  noStroke();
  vertex(50, 700);
  vertex(75, 450);
  vertex(100, 450);
  vertex(115, 475);
  vertex(160, 600);
  vertex(175, 580);
  vertex(200, 700);
  endShape(CLOSE);
  //left tower second half:
  beginShape();
  fill(255);
  noStroke();
  vertex(150, 700);
  vertex(175, 550);
  vertex(200, 600);
  vertex(215, 485);
  vertex(260, 600);
  vertex(275, 600);
  vertex(300, 700);
  endShape(CLOSE);
  //Right tower:
  beginShape();
  fill(255);
  noStroke();
  vertex(300, 700);
  vertex(375, 500);
  vertex(400, 650);
  vertex(450, 535);
  vertex(470, 650);
  vertex(485, 620);
  vertex(550, 700);
  endShape(CLOSE);
  

  //Drawing the snowfall
  drawSnowFlakes();
  
  //Penguins:  
  image(img1, 350, 550);
  image(img2, 200, 600);


} //closes displayScene2 method


//Scene 3:
void displayScene3() {
  
  //Background sky:
  fill(167, 208, 229);
  rect( 0, 0, width, height);
  
  //Water:
  fill(68, 107, 179);
  rect(width / 2, 800, width, height);
  
  
  //Waves Dark:
  for(int i = 0; i <= width; i = i + 220) {
    fill(68, 107, 179);
    ellipse(i + (width/2), 820, 120, 80);
  }
  
    //Waves Light:
  for(int i = 0; i <= width; i = i + 220) {
  fill(167, 208, 229);
    ellipse(i + (width/2) + 110, 782, 130, 80);
  }
  
  // Ice
  fill(255); // White color for the ice
  rect(0, 700, width / 2, height);
  
  // Gray lumpy smog
  fill(100, 150); // Gray color with transparency
  noStroke();


  // Gray lumpy smog
  noStroke();

  int numShapes = 50; // Number of lumps
  int maxRadius = 200;
  int maxOpacity = 100; 
  int delay = 3; 

  for (int i = 0; i < numShapes; i++) {
    float x = random(width); 
    float y = random(height / 3);
    float radius = random(10, maxRadius); 
    int opacity = int(map(i, 0, numShapes - 1, 0, maxOpacity));

    fill(100, opacity); 
    ellipse(x, y, radius, radius);

    delay(delay); 
  }
 
  //Top ice tower:
  beginShape();
  fill(255);
  noStroke();
  vertex(0, 700);
  vertex(75, 650);
  vertex(150, 670);
  vertex(210, 680);
  vertex(350, 690);
  vertex(485, 680);
  vertex(550, 700);
  endShape(CLOSE);
  
  //Slide off ice into ocean:
  beginShape();
  fill(167, 208, 229);
  noStroke();
  vertex(550, 700);
  vertex(650, 700);
  vertex(600, 770);
  endShape(CLOSE);
  

  image(img4, -250, 400);
  
} //closes displayScene3 method


//Scene 4:
void displayScene4() {

  //Background sky:
  fill(167, 208, 229);
  rect( 0, 0, width, height);
  
  //Water
  fill(68, 107, 179);
  rect(0, 700, width, height);
  
  //Waves Light:
  for(int i = 0; i <= width; i = i + 220) {
    fill(167, 208, 229);
    ellipse(i + 110, 682, 130, 80);
  }
  
  //Polar Bear:
  image(img3, 100, 418);
    
  //Waves Dark:
  for(int i = 0; i <= width; i = i + 220) {
    fill(68, 107, 179);
    ellipse(i, 720, 120, 80);
  }
  
  //Fix Bug with picture and waves:
  pushStyle(); // Save current style settings
  strokeWeight(10);
  noFill();
  stroke(68, 107, 179);
  arc(550, 699, 130, 60, 0, PI);
  popStyle(); // Restore previous style settings
  noStroke();
  
  
  //Sun in top-left corner:
  noStroke();
  
  //Sun:
  color color1 = color(255, 255, 0);    // Yellow color
  color color2 = color(255, 108, 23);   // Orange color
  color color3 = color(255, 0, 0);      // Red color
  
  // Draw the gradient sun circles
  for (int i = 500; i >= 200; i -= 20) {
    float progress = map(i, 200, 500, 0, 1); 
    
    color currentColor = lerpColor(color1, color2, progress);
    if (i < 300) {
      currentColor = lerpColor(color2, color3, progress);
    }
    
    fill(currentColor); 
    circle(0, 0, i);
  }
 
} //closes displayScene4 method



//Draws the snowflakes:
void drawSnowFlakes() {
  
  //Goes though all snowflakes in the list
  for (Snowflake thisSnowflake : storm) { 
    
    //Prints the circle:
    thisSnowflake.printSnowFlake();
    
    //Moves the snowflake back to the top
    if (thisSnowflake.yPos > height) {
       thisSnowflake.yPos = 0;
    }
    if (thisSnowflake.xPos > width) {
      thisSnowflake.xPos = 0;
    }
    
  }
} //closes drawSnowFlakes method
