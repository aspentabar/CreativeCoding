// Iterative Pattern:

//Field Declarations:
  int rectNum = 1;


// The initial setup of the program:
void setup() {
  size(500, 600);
}


// Draws the program:
void draw() {
  // For loop:
  for (int i = 0; i <= width; i += 100) {
    for (int j = 0; j <= height; j += 150) {
      pushMatrix(); 
      translate(i, j);
      patternRect(); 
      drawDesign(); 
      popMatrix(); 
      rectNum ++;
    }
  }
  // Continues the draw method to only run once:
  noLoop();
} //closes draw method

// Created the pattern for just the outside
void patternRect() {
  // Generate black for each rectangle background:
  fill(0);
  stroke(2);
  // Create the series of patterns:
  rect(0, 0, 100, 150);
} //closes patternRect method



// Draws designs within each rectangle:
void drawDesign() {
  // Set design properties
  strokeWeight(2);
  stroke(0);


  
  //1st:
    if (rectNum % 2 != 0) { 
      
    // Fill in the area between the lines
      // Blue that fills the color of the inside shape:
        pushStyle();
    noStroke();
  fill(50, 91, 101);
    beginShape();
    vertex(50, 0);
    vertex(100, 0);
    vertex(100, 60);
       vertex(65, 23);
    vertex(63, 18);
    endShape(CLOSE);
    
    
    //Filling the odd numbered topright shape:
    beginShape();
    vertex(100, 60);
    vertex(100, 113);
    vertex(75, 113);
    vertex(74, 112);
    vertex(76, 111);
    vertex(78, 110);
    vertex(78, 109);
    vertex(78, 108);
    vertex(78, 107);
    vertex(79, 106);
    vertex(81, 105);
    vertex(81, 104);
    vertex(81, 103);
    vertex(81, 102);
    vertex(81, 101);  
    vertex(81, 100);
    vertex(81, 99);
    vertex(81, 98);
    vertex(81, 97);  
    vertex(81, 96); 
    vertex(81, 95);
    vertex(81, 94);
    vertex(81, 93);
    vertex(81, 92);
    vertex(80, 91);  
    vertex(80, 90);  
    vertex(80, 89);
    vertex(79, 89);
    vertex(79, 88);
    vertex(78, 87);
    vertex(78, 86);
    vertex(76, 85);
    vertex(76, 84);        
    vertex(63, 18);
    endShape(CLOSE);
    
    
   //fixes small bug:
   beginShape();
   
    vertex(100, 0);
    vertex(100, 100);
    vertex(50, 50);
   
   endShape(CLOSE);
   
    //Filling the odd numbered bottom left shape:
    
     beginShape();
     

    vertex(50, 150);
    vertex(0, 150);
    vertex(0, 37);
    vertex(30, 120);
    endShape(CLOSE);
    
    beginShape();
    
    vertex(0, 37);
    vertex(25, 37);
    //Start of curve:
    vertex(25, 38);
    vertex(25, 39);
    vertex(25, 40);
    vertex(23, 41);
    vertex(23, 42);
    
    vertex(20, 43);
    vertex(20, 44);
    vertex(20, 45);
    vertex(19, 46);    
    vertex(19, 47);
    
  vertex(20, 48);
  vertex(20, 49);
  vertex(20, 50);
  vertex(20, 51);
  vertex(19, 52);
  vertex(19, 53); 
  vertex(18, 54);
  vertex(20, 55);
  vertex(20, 56);
  vertex(20, 57);
  
   vertex(21, 58);
   vertex(21, 59);
   vertex(21, 61);
   vertex(21, 62);
   vertex(22, 63);
   vertex(24, 64);
   vertex(24, 65);
   vertex(25, 66);
   
   vertex(26, 120);
    vertex(50, 150);
    vertex(0, 150);

    endShape(CLOSE);
    
    
         //triangle top fill:
     beginShape();
     
     vertex(0, 10);
     vertex(0, 37);
     vertex(30, 37);
     endShape(CLOSE);
     
     
     //Fill triangle:
     beginShape();
     
     vertex(70, 114);
     vertex(100, 114);
     vertex(100, 140);
     endShape(CLOSE);
    
    
    popStyle();
    
    strokeWeight(2);
    


    translate(50, 75); // Translate to the middle of the rectangle
    scale(1, -1); // Flip over the x-axis and y-axis
    translate(-50, -75); // Translate back to the original position

  line(0, 0, 50, 0);
  line(50, 0, 35, 20);

  // Blue that fills the color of the inside shape:
  fill(50, 91, 101);
  // Larger arc:
  arc(0, 50, 100, 80, (-1 * PI) / 4, (1 * PI) / 3);
  
  noFill();
  // Smaller arc:
  arc(29, 98, 20, 30, (1 * PI) / 2, (4 * PI) / 3);

  line(0, 113, 30, 113);
  
  line(30, 114, 0, 140);
  

  
  
  //Red circles:
    pushStyle();
    noStroke();
    fill(109, 2, 22);
    circle(12, 105, 7);
    circle(10, 90, 7);
    circle(18, 75, 10);
    circle(30, 60, 15);
    circle(28, 40, 10);
    
    circle(31, 10, 10);
    
    circle(10, 10, 10);
    
    //White circles in shape:
    fill(255);
    circle(15, 50, 11);
    circle(10, 65, 7);
    circle(10, 33, 7);
         
    
    popStyle();
    

     line(18, 20, 25, 0);
     
     line(0, 128, 15, 114);
     line(0, 117, 12, 117);
     line(0, 121, 8, 121);
    
  
  
      scale(-1, -1); // Flip over the x-axis and y-axis
      translate(-100, -150); // Translate back to the original position

    line(0, 0, 50, 0);
  line(50, 0, 35, 20);

  // Blue that fills the color of the inside shape:
  fill(50, 91, 101);
  // Larger arc:
  arc(0, 50, 100, 80, (-1 * PI) / 4, (1 * PI) / 3);
  
  noFill();
  // Smaller arc:
  arc(29, 98, 20, 30, (1 * PI) / 2, (4 * PI) / 3);

  line(0, 113, 30, 113);
  
    line(30, 114, 0, 140);
    
    line(100, 0, 100, 175);
    
    
    //White Circles:
    pushStyle();
    noStroke();
    fill(255);
    circle(30, 150, 15);
    circle(70, 0, 15);
    

    fill(109, 2, 22);
    circle(12, 105, 7);
    circle(10, 90, 7);
    circle(18, 75, 10);
    circle(30, 60, 15);
    circle(28, 40, 10);
    
    circle(31, 10, 10);
    circle(10, 10, 10);
    
        //White circles in shape:
    fill(255);
    circle(15, 50, 11);
    circle(10, 65, 7);
    circle(10, 33, 7);
         
    

    popStyle();
    
    
    line(100, 130, 65, 130);
     line(0, 20, 35, 20);

         
     line(18, 20, 25, 0);
  
  
       line(0, 128, 15, 114);
       line(0, 117, 12, 117);
       line(0, 121, 8, 121);
  
    } //closes if statement for odd rectangles
  
  

  //2nd:
  // Flip the design on the other side of the rectangle
  if (rectNum % 2 == 0) { 
    
    
    //Fills the shapes with color:
    pushStyle();  

     fill(50, 91, 101);

    noStroke();


  //Top left fill:
    beginShape();
    vertex(0, 0);
    vertex(50, 0);
    vertex(35, 23);
    vertex(0, 75);
    endShape(CLOSE);
    

     beginShape();
    
    vertex(0, 113);
    vertex(30, 113);
    vertex(28, 112);
    
    vertex(25, 111);
    vertex(24, 110);
    vertex(23, 109);
    vertex(22, 108);
    
    vertex(21, 107);
    vertex(20, 106);
    vertex(19, 105);
    vertex(19, 104);
    
    vertex(19, 103);
    vertex(19, 102);
    vertex(19, 101);
    vertex(19, 100);
    
    vertex(20, 99);
    vertex(20, 98);
    vertex(20, 97);
    vertex(20, 96);
    
    vertex(20, 95);
    vertex(20, 94);
    vertex(20, 93);
    vertex(20, 92);
    
    vertex(20, 91);
    vertex(20, 90);
    vertex(21, 89);
    vertex(21, 88);
    
    vertex(25, 87);
    vertex(25, 86);
    vertex(25, 85);
    vertex(26, 84);
    vertex(26, 83);
    vertex(0, 10);
    endShape(CLOSE);
    
    
    //Bottom right fill:
     beginShape();
          
    vertex(100, 37);
    vertex(75, 37);
    
    vertex(76, 38);
    vertex(77, 39);
    vertex(78, 40);
    vertex(79, 41);
    
    vertex(79, 41);
    vertex(79, 42);
    vertex(80, 43);
    vertex(80, 44);
    
    vertex(81, 45);
    vertex(81, 46);
    vertex(81, 47);
    vertex(81, 48);
    
    vertex(81, 49);
    vertex(81, 50);
    vertex(82, 51);
    vertex(82, 52);
    
    vertex(82, 53);
    vertex(82, 54);
    vertex(80, 55);
    vertex(80, 56);
    
    vertex(80, 57);
    vertex(80, 58);
    vertex(80, 59);
    vertex(80, 60);
    
    vertex(80, 61);
    vertex(79, 62);
    vertex(78, 63);
    vertex(77, 64);
    
    vertex(76, 65);
    vertex(75, 66);
    vertex(74, 67);
    vertex(73, 68);
    vertex(100, 150);
     endShape(CLOSE);
     
     beginShape();
     vertex(100, 150);
     vertex(50, 150);
     vertex(65, 130);
     vertex(100, 50);
     endShape(CLOSE);
     
     //triangle top fill:
     beginShape();
     vertex(31, 113);
     vertex(0, 113);
     vertex(0, 140);
     endShape(CLOSE);
     
     
     //Fill triangle:
     beginShape();
     
     vertex(70, 37);
     vertex(100, 37);
     vertex(100, 10);
     endShape(CLOSE);

    popStyle();
    
    
    
    //Top left:
    line(0, 0, 50, 0);
    line(50, 0, 35, 20);

  // Blue that fills the color of the inside shape:
  fill(50, 91, 101);
  // Larger arc:
  arc(0, 50, 100, 80, (-1 * PI) / 4, (1 * PI) / 3);
  
  noFill();
  // Smaller arc:
  arc(29, 98, 20, 30, (1 * PI) / 2, (4 * PI) / 3);

  line(0, 113, 30, 113);
  
  
    line(30, 114, 0, 140);
    
    
        //Red circles:
        
    pushStyle();
    
    noStroke();
    fill(109, 2, 22);
    circle(12, 105, 7);
    circle(10, 90, 7);
    circle(18, 75, 10);
    circle(30, 60, 15);
    circle(28, 40, 10);
    
    circle(31, 10, 10);
    circle(10, 10, 10);
    
        //White circles in shape:
    fill(255);
    circle(15, 50, 11);
    circle(10, 65, 7);
    circle(10, 33, 7);
         

    
    popStyle();
    
         
     line(18, 20, 25, 0);
    
     line(0, 128, 15, 114);
          line(0, 117, 12, 117);
     line(0, 121, 8, 121);
    
    
    //Bottom right:
    
    //pushMatrix(); // Save the current transformation state
    translate(50, 75); // Translate to the middle of the rectangle
    scale(-1, -1); // Flip over the x-axis and y-axis
    translate(-50, -75); // Translate back to the original position
    
    
    // Draw the mirrored design
    line(0, 0, 50, 0);
    line(50, 0, 35, 20);
      // Blue that fills the color of the inside shape:
    fill(50, 91, 101);
    arc(0, 50, 100, 80, (-1 * PI) / 4, (1 * PI) / 3);
    
    noFill();

    arc(29, 98, 20, 30, (1 * PI) / 2, (4 * PI) / 3);
    line(0, 113, 30, 113);
    
      line(30, 114, 0, 140);
      
    line(100, 0, 100, 175);
    
    
    //White Circles:
    pushStyle();
    fill(255);
    noStroke();
    circle(30, 150, 15);
    circle(70, 0, 15);
    
    
    //Red circles:
    fill(109, 2, 22);
    circle(12, 105, 7);
    circle(10, 90, 7);
    circle(18, 75, 10);
    circle(30, 60, 15);
    circle(28, 40, 10);
    
    circle(31, 10, 10);
    circle(10, 10, 10);
    
        //White circles in shape:
    fill(255);
    circle(15, 50, 11);
    circle(10, 65, 7);
    circle(10, 33, 7);
         

    popStyle();
      

     line(100, 130, 65, 130);
     line(0, 20, 35, 20);
          
     line(18, 20, 25, 0);
     

     line(18, 20, 25, 0);
     
     line(0, 128, 15, 114);
          line(0, 117, 12, 117);
     line(0, 121, 8, 121);

    
  } //closes if statement for even rectangles
  

} //closes the draw method
