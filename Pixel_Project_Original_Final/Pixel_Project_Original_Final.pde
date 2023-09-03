//Pixle Project:

 Grid currGrid = new Grid(10);
 int counter = 0;


void setup() {
  size(505, 505);
    background(0);
    currGrid.initPrintGridLayout();
}


void draw() {
  
  //Time:
  delay(500);

    if (counter < 9) {
        currGrid.changeStateOfBoard();
    } else if (counter >= 9) {
        // Check if any color count exceeds 90 and stop calling fight()
        int redCount = currGrid.getRedCount();
        int blueCount = currGrid.getBlueCount();
        int greenCount = currGrid.getGreenCount();
        int yellowCount = currGrid.getYellowCount();

        if (redCount == 100 || blueCount == 100 || greenCount == 100 || yellowCount == 100) {
            println("Color won!");
            noLoop(); // Stops calling draw() and fight()
            
          
            textSize(48); // Set a reasonable text size
            textAlign(CENTER); // Center the text horizontally
            fill(0); // Set the fill color to black

            if (redCount == 100) {
                text("Red won!", width / 2, height / 2);
            } else if (blueCount == 100) {
                text("Blue won!", width / 2, height / 2);
            } else if (greenCount == 100) {
                text("Green won!", width / 2, height / 2);
            } else if (yellowCount == 100) {
                text("Yellow won!", width / 2, height / 2);
            }
            
      
        } else {
            currGrid.fight();
        }
    }
    counter++;
}




////redWiner: flashed colors of red when the red color has won:
//public redWinner(int count) {
  
  
//}
