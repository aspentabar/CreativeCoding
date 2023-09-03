
//Represents the grid of colors:
class Grid {
  
  //Fields:
  int gridSize;
  Cube[][] grid;
 
 
  //Constructor:
  Grid (int gridSize) {
    this.gridSize = gridSize;
    this.grid = new Cube[gridSize][gridSize];
  }
  
  
  ////init
  //     public Grid(int numRows) {
  //      // Initialize the grid with empty Cube objects
  //      grid = new Cube[numRows][numRows];
  //      for (int i = 0; i < numRows; i++) {
  //          for (int j = 0; j < numRows; j++) {
  //              grid[i][j] = new Cube();
  //          }
  //      }
  //  }
  

  
  //Methods:
  
  
  //Prints the first iteration of the grid:
  void initPrintGridLayout() {
    
  // Iterate over each cell in the grid
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      
      Cube currCube = new Cube();

      if (i == 0 && j == 0) {
        //Red
        currCube.setColor1(255);
        currCube.setColor2(0);
        currCube.setColor3(0);
        currCube.setIsRed(true);
        currCube.setX(0);
        currCube.setY(0);
      } else if (i == 9 && j == 0) {
        //Green:
        currCube.setColor1(0);
        currCube.setColor2(255);
        currCube.setColor3(0);
        currCube.setIsGreen(true);
        currCube.setX(0);
        currCube.setY(9);
      } else if (i == 0 && j == 9) {
        //Blue:
        currCube.setColor1(0);
        currCube.setColor2(0);
        currCube.setColor3(255);
        currCube.setIsBlue(true);
        currCube.setX(9);
        currCube.setY(0);
      } else if (i == 9 && j == 9) {
        //Yellow:
        currCube.setColor1(255);
        currCube.setColor2(255);
        currCube.setColor3(0);
        currCube.setIsYellow(true);
        currCube.setX(9);
        currCube.setY(9);
      } else {
         //White:
        currCube.setColor1(0);
        currCube.setColor2(0);
        currCube.setColor3(0);
        currCube.setIsWhite(true);
        currCube.setX(i);
        currCube.setY(j);
      }
      
      // Store the cube object in the grid array in the proper position:
      grid[i][j] = currCube;
      
      currCube.printCube(i * currCube.getDims(), j * currCube.getDims());
      
      }
    }
  } //closes printGridLayout method



//Changes the colors on the board and there state:
void changeStateOfBoard() {
  int numRows = grid.length;
  int numCols = grid[0].length;
  

  //Temporary grid to store the updated states and colors:
  Cube[][] tempGrid = new Cube[numRows][numCols];
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      tempGrid[i][j] = new Cube();
      tempGrid[i][j].setIsRed(grid[i][j].getIsRed());
      tempGrid[i][j].setIsGreen(grid[i][j].getIsGreen());
      tempGrid[i][j].setIsBlue(grid[i][j].getIsBlue());
      tempGrid[i][j].setIsYellow(grid[i][j].getIsYellow());
      tempGrid[i][j].setColor1(grid[i][j].getColor1());
      tempGrid[i][j].setColor2(grid[i][j].getColor2());
      tempGrid[i][j].setColor3(grid[i][j].getColor3());
    }
  }
  
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      // i is down-up
      // j is left-right
     
      //Red:
      if (grid[i][j].getIsRed() && i < numRows - 1 && j < numCols - 1) {
        // Set to red:
        if(grid[i + 1][j].getIsWhite() && !grid[i + 1][j].isColored()) {
          //check what is white around current color, and have a random int that picks a 4 loop that sees what colors it will fill in
          tempGrid[i + 1][j].setIsRed(true);
          tempGrid[i + 1][j].setColor1(255);
          tempGrid[i + 1][j].setColor2(0);
          tempGrid[i + 1][j].setColor3(0);

        }
        if(grid[i][j + 1].getIsWhite() && !grid[i][j + 1].isColored()) {
          tempGrid[i][j + 1].setIsRed(true);
          tempGrid[i][j + 1].setColor1(255);
          tempGrid[i][j + 1].setColor2(0);
          tempGrid[i][j + 1].setColor3(0);
        }
      }
      
      //Blue:
      if (grid[i][j].getIsBlue() && i < numRows - 1 && j > 0) {
        // Set to blue:
        if(grid[i + 1][j].getIsWhite() && !grid[i + 1][j].isColored()) {
          tempGrid[i + 1][j].setIsBlue(true);
          tempGrid[i + 1][j].setColor1(0);
          tempGrid[i + 1][j].setColor2(0);
          tempGrid[i + 1][j].setColor3(255);
        }
        if(grid[i][j - 1].getIsWhite() && !grid[i][j - 1].isColored()) {
          tempGrid[i][j - 1].setIsBlue(true);
          tempGrid[i][j - 1].setColor1(0);
          tempGrid[i][j - 1].setColor2(0);
          tempGrid[i][j - 1].setColor3(255);
        }
      }
      
      //Green:
      if (grid[i][j].getIsGreen() && i > 0 && j < numCols - 1) {
        // Set to green:
        
        if(grid[i - 1][j].getIsWhite() && !grid[i - 1][j].isColored()) {
          tempGrid[i - 1][j].setIsGreen(true);
          tempGrid[i - 1][j].setColor1(0);
          tempGrid[i - 1][j].setColor2(255);
          tempGrid[i - 1][j].setColor3(0);
        }

        if(grid[i][j + 1].getIsWhite() && !grid[i][j + 1].isColored()) {
          tempGrid[i][j + 1].setIsGreen(true);
          tempGrid[i][j + 1].setColor1(0);
          tempGrid[i][j + 1].setColor2(255);
          tempGrid[i ][j + 1].setColor3(0);
        }
      } 

      
      //Yellow:
      if (grid[i][j].getIsYellow() && i > 0 && j > 0) {
        // Set to yellow:
        if(grid[ i- 1][j].getIsWhite() && !grid[i - 1][j].isColored()) {
          tempGrid[i - 1][j].setIsYellow(true);
          tempGrid[i - 1][j].setColor1(255);
          tempGrid[i - 1][j].setColor2(255);
          tempGrid[i - 1][j].setColor3(0);
        } if(grid[i][j - 1].getIsWhite()  && !grid[i][j - 1].isColored()) {
          tempGrid[i][j - 1].setIsYellow(true);
          tempGrid[i][j - 1].setColor1(255);
          tempGrid[i][j - 1].setColor2(255);
          tempGrid[i][j - 1].setColor3(0);
        }
      }
      

    } //closes in for loop
  } //closes out for loop
  
  // After color changes, update the original grid:
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      grid[i][j].setIsRed(tempGrid[i][j].getIsRed());
      grid[i][j].setIsGreen(tempGrid[i][j].getIsGreen());
      grid[i][j].setIsBlue(tempGrid[i][j].getIsBlue());
      grid[i][j].setIsYellow(tempGrid[i][j].getIsYellow());
      grid[i][j].setColor1(tempGrid[i][j].getColor1());
      grid[i][j].setColor2(tempGrid[i][j].getColor2());
      grid[i][j].setColor3(tempGrid[i][j].getColor3());
    }
  }
  
  printCurrGrid();

}



////////////////////////

//Has the colors fight eachother while staring in the boundaries if the board:
void fight() {
  
  int numRows = grid.length;
  int numCols = grid[0].length;
  int rando = int(random(1, 5));
  
        
  int redCount = 0;
  int blueCount = 0;
  int greenCount = 0;
  int yellowCount = 0;

  

  //Temporary grid to store the updated states and colors:
  Cube[][] tempGrid = new Cube[numRows][numCols];
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {

  
      tempGrid[i][j] = new Cube();
      tempGrid[i][j].setIsRed(grid[i][j].getIsRed());
      tempGrid[i][j].setIsGreen(grid[i][j].getIsGreen());
      tempGrid[i][j].setIsBlue(grid[i][j].getIsBlue());
      tempGrid[i][j].setIsYellow(grid[i][j].getIsYellow());
      tempGrid[i][j].setColor1(grid[i][j].getColor1());
      tempGrid[i][j].setColor2(grid[i][j].getColor2());
      tempGrid[i][j].setColor3(grid[i][j].getColor3());
      
              // Update counters based on the current state of cubes
        if (grid[i][j].getIsRed()) {
            redCount++;
        } else if (grid[i][j].getIsBlue()) {
            blueCount++;
        } else if (grid[i][j].getIsGreen()) {
            greenCount++;
        } else if (grid[i][j].getIsYellow()) {
            yellowCount++;
        }
    }
  }
  
  
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      // i is down-up
      // j is left-right
  
  
     if(redCount > 0) {
      //Red:
      if (grid[i][j].getIsRed() && i < numRows - 1 && j < numCols - 1) {
        // Set to red:
        if (rando == 1) {
          if(grid[i + 1][j].isColored() && grid[i][j + 1].isColored()) {
            tempGrid[i + 1][j].setAllToFalse();
            tempGrid[i + 1][j].setIsRed(true);
            tempGrid[i + 1][j].setColor1(255);
            tempGrid[i + 1][j].setColor2(0);
            tempGrid[i + 1][j ].setColor3(0);

            tempGrid[i][j + 1].setAllToFalse();
            tempGrid[i][j + 1].setIsRed(true);
            tempGrid[i][j + 1].setColor1(255);
            tempGrid[i][j + 1].setColor2(0);
            tempGrid[i][j + 1].setColor3(0);
          }
        }
      
      if (redCount == 99 && grid[i + 1][j + 1].isColored()) {
          tempGrid[i + 1][j + 1].setAllToFalse();
          tempGrid[i + 1][j + 1].setIsRed(true);
          tempGrid[i + 1][j + 1].setColor1(255);
          tempGrid[i + 1][j + 1].setColor2(0);
          tempGrid[i + 1][j + 1].setColor3(0);
     }
      }
     }
      
      if(blueCount > 0) {
      //Blue:
      if (grid[i][j].getIsBlue() && i < numRows - 1 && j > 0) {
        if (rando == 2) {
        if(grid[i][j - 1].isColored() && grid[i + 1][j].isColored()) {
          tempGrid[i][j - 1].setAllToFalse();
          tempGrid[i][j - 1].setIsBlue(true);
          tempGrid[i][j - 1].setColor1(0);
          tempGrid[i][j - 1].setColor2(0);
          tempGrid[i][j - 1].setColor3(255);

          tempGrid[i + 1][j].setAllToFalse();
          tempGrid[i + 1][j].setIsBlue(true);
          tempGrid[i + 1][j].setColor1(0);
          tempGrid[i + 1][j].setColor2(0);
          tempGrid[i + 1][j].setColor3(255);
          }
        }
      
       if (blueCount == 99 && grid[i + 1][j - 1].isColored()) {
          tempGrid[i + 1][j - 1].setAllToFalse();
          tempGrid[i + 1][j - 1].setIsBlue(true);
          tempGrid[i + 1][j - 1].setColor1(0);
          tempGrid[i + 1][j - 1].setColor2(0);
          tempGrid[i + 1][j - 1].setColor3(255);
     }
      }
      }
     
      
           if(greenCount > 0) {
      //Green:
      if (grid[i][j].getIsGreen() && i > 0 && j < numCols - 1) {
        if (rando == 3) {
        if(grid[i - 1][j].isColored() && grid[i][j + 1].isColored()) {
          tempGrid[i - 1][j].setAllToFalse();
          tempGrid[i - 1][j].setIsGreen(true);
          tempGrid[i - 1][j].setColor1(0);
          tempGrid[i - 1][j].setColor2(255);
          tempGrid[i - 1][j].setColor3(0);

          tempGrid[i][j + 1].setAllToFalse();
          tempGrid[i][j + 1].setIsGreen(true);
          tempGrid[i][j + 1].setColor1(0);
          tempGrid[i][j + 1].setColor2(255);
          tempGrid[i][j + 1].setColor3(0);
          }
        }
      
       if (greenCount == 99 && grid[i - 1][j + 1].isColored()) {
       tempGrid[i - 1][j + 1].setAllToFalse();
          tempGrid[i - 1][j + 1].setIsGreen(true);
          tempGrid[i - 1][j + 1].setColor1(0);
          tempGrid[i - 1][j + 1].setColor2(255);
          tempGrid[i - 1][j + 1].setColor3(0);
     }
           }
           }

        if(yellowCount > 0) {
      //Yellow:
      if (grid[i][j].getIsYellow() && i > 0 && j > 0) {
        if (rando == 4) {
        if(grid[i][j - 1].isColored() && grid[i - 1][j].isColored()) {
          tempGrid[i][j - 1].setAllToFalse();
          tempGrid[i][j - 1].setIsYellow(true);
          tempGrid[i][j - 1].setColor1(255);
          tempGrid[i][j - 1].setColor2(255);
          tempGrid[i][j - 1].setColor3(0);
        
          tempGrid[i - 1][j].setAllToFalse();
          tempGrid[i - 1][j].setIsYellow(true);
          tempGrid[i - 1][j].setColor1(255);
          tempGrid[i - 1][j].setColor2(255);
          tempGrid[i - 1][j].setColor3(0);
          }
        }
      
             if (yellowCount == 99 && grid[i - 1][j - 1].isColored()) {
          tempGrid[i - 1][j - 1].setAllToFalse();
          tempGrid[i - 1][j - 1].setIsYellow(true);
          tempGrid[i - 1][j - 1].setColor1(255);
          tempGrid[i - 1][j - 1].setColor2(255);
          tempGrid[i - 1][j - 1].setColor3(0);
     }
        }
        }

    } //closes in for loop
  } //closes out for loop
  
  



  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      grid[i][j].setIsRed(tempGrid[i][j].getIsRed());
      grid[i][j].setIsGreen(tempGrid[i][j].getIsGreen());
      grid[i][j].setIsBlue(tempGrid[i][j].getIsBlue());
      grid[i][j].setIsYellow(tempGrid[i][j].getIsYellow());
      grid[i][j].setColor1(tempGrid[i][j].getColor1());
      grid[i][j].setColor2(tempGrid[i][j].getColor2());
      grid[i][j].setColor3(tempGrid[i][j].getColor3());


    }
  }

  printCurrGrid();

  // Update the counters with the latest counts
  println("Red Count: " + redCount);
  println("Blue Count: " + blueCount);
  println("Green Count: " + greenCount);
  println("Yellow Count: " + yellowCount);

  
} //closes fight method








    ////find the color1 2 3 of the current cube and if it matches a c0loro then change the state of tat cube to the color 
    //if(grid[i][j].getColor1() == 255 && grid[i][j].getColor2() == 0 && grid[i][j].getColor3() == 0) {
    //  tempGrid[i][j].setIsRed(true);
    //}
    //    if(grid[i][j].getColor1() == 255 && grid[i][j].getColor2() == 255 && grid[i][j].getColor3() == 0) {
    //  tempGrid[i][j].setIsYellow(true);
    //}
    //    if(grid[i][j].getColor1() == 0 && grid[i][j].getColor2() == 255 && grid[i][j].getColor3() == 0) {
    //  tempGrid[i][j].setIsGreen(true);
    //}
    //    if(grid[i][j].getColor1() == 0 && grid[i][j].getColor2() == 0 && grid[i][j].getColor3() == 255) {
    //  tempGrid[i][j].setIsBlue(true);
    //}





//void fight() {
//    int numRows = grid.length;
//    int numCols = grid[0].length;
//    int rando = int(random(1, 5));

//    int redCount = 0;
//    int blueCount = 0;
//    int greenCount = 0;
//    int yellowCount = 0;

//    // Temporary grid to store the updated states and colors:
//    Cube[][] tempGrid = new Cube[numRows][numCols];
//    for (int i = 0; i < numRows; i++) {
//        for (int j = 0; j < numCols; j++) {
//            tempGrid[i][j] = new Cube();
//            tempGrid[i][j].setIsRed(grid[i][j].getIsRed());
//            tempGrid[i][j].setIsGreen(grid[i][j].getIsGreen());
//            tempGrid[i][j].setIsBlue(grid[i][j].getIsBlue());
//            tempGrid[i][j].setIsYellow(grid[i][j].getIsYellow());
//            tempGrid[i][j].setColor1(grid[i][j].getColor1());
//            tempGrid[i][j].setColor2(grid[i][j].getColor2());
//            tempGrid[i][j].setColor3(grid[i][j].getColor3());

//            // Update counters based on the current state of cubes
//            if (grid[i][j].getIsRed()) {
//                redCount++;
                
                
//            if (redCount > 0) {
              
//              if (grid[i][j].getIsRed() && i < numRows - 1 && j < numCols - 1) {
//        // Set to red:
//        if (rando == 1) {
//          if(grid[i + 1][j].isColored() && grid[i][j + 1].isColored()) {
//            tempGrid[i + 1][j].setIsRed(true);
//            tempGrid[i + 1][j].setColor1(255);
//            tempGrid[i + 1][j].setColor2(0);
//            tempGrid[i + 1][j ].setColor3(0);

//            tempGrid[i][j + 1].setIsRed(true);
//            tempGrid[i][j + 1].setColor1(255);
//            tempGrid[i][j + 1].setColor2(0);
//            tempGrid[i][j + 1].setColor3(0);
//          }
//        }
//      }  
//            }
            
            
            
//            } else if (grid[i][j].getIsBlue()) {
//                blueCount++;
                
//                 if (blueCount > 0) {
//                         if (grid[i][j].getIsBlue() && i < numRows - 1 && j > 0) {
//        if (rando == 2) {
//        if(grid[i][j - 1].isColored() && grid[i + 1][j].isColored()) {
//          tempGrid[i][j - 1].setIsBlue(true);
//          tempGrid[i][j - 1].setColor1(0);
//          tempGrid[i][j - 1].setColor2(0);
//          tempGrid[i][j - 1].setColor3(255);

//          tempGrid[i + 1][j].setIsBlue(true);
//          tempGrid[i + 1][j].setColor1(0);
//          tempGrid[i + 1][j].setColor2(0);
//          tempGrid[i + 1][j].setColor3(255);
//          }
//        }
//      }
                   
//                 }
                
                
                
//            } else if (grid[i][j].getIsGreen()) {
//                greenCount++;

//                // You can now check the condition for greenCount here:
//                if (greenCount > 0) {
//                    if (grid[i][j].getIsGreen() && i > 0 && j < numCols - 1) {
//        if (rando == 3) {
//        if(grid[i - 1][j].isColored() && grid[i][j + 1].isColored()) {
//          tempGrid[i - 1][j].setIsGreen(true);
//          tempGrid[i - 1][j].setColor1(0);
//          tempGrid[i - 1][j].setColor2(255);
//          tempGrid[i - 1][j].setColor3(0);

//          tempGrid[i][j + 1].setIsGreen(true);
//          tempGrid[i][j + 1].setColor1(0);
//          tempGrid[i][j + 1].setColor2(255);
//          tempGrid[i ][j + 1].setColor3(0);
//          }
//        }
//      }
//                }
                
                
                

//            } else if (grid[i][j].getIsYellow()) {
//                yellowCount++;
                
//                if (yellowCount > 0) {
//                  if (grid[i][j].getIsYellow() && i > 0 && j > 0) {
//        if (rando == 4) {
//        if(grid[i][j - 1].isColored() && grid[i - 1][j].isColored()) {
//          tempGrid[i][j - 1].setIsYellow(true);
//          tempGrid[i][j - 1].setColor1(255);
//          tempGrid[i][j - 1].setColor2(255);
//          tempGrid[i][j - 1].setColor3(0);
        
//          tempGrid[i - 1][j].setIsYellow(true);
//          tempGrid[i - 1][j].setColor1(255);
//          tempGrid[i - 1][j].setColor2(255);
//          tempGrid[i - 1][j].setColor3(0);
//          }
//        }
//      }
                  
                
                
                
                
//            }
//        }
//    }


        
//    }

//    for (int i = 0; i < numRows; i++) {
//        for (int j = 0; j < numCols; j++) {
//            grid[i][j].setIsRed(tempGrid[i][j].getIsRed());
//            grid[i][j].setIsGreen(tempGrid[i][j].getIsGreen());
//            grid[i][j].setIsBlue(tempGrid[i][j].getIsBlue());
//            grid[i][j].setIsYellow(tempGrid[i][j].getIsYellow());
//            grid[i][j].setColor1(tempGrid[i][j].getColor1());
//            grid[i][j].setColor2(tempGrid[i][j].getColor2());
//            grid[i][j].setColor3(tempGrid[i][j].getColor3());
//        }
//    }

//    printCurrGrid();

//    // Update the counters with the latest counts
//    println("Red Count: " + redCount);
//    println("Blue Count: " + blueCount);
//    println("Green Count: " + greenCount);
//    println("Yellow Count: " + yellowCount);
//}







int getRedCount() {
        int count = 0;
        for (Cube[] row : grid) {
            for (Cube cube : row) {
                if (cube.getIsRed()) {
                    count++;
                }
            }
        }
        return count;
    }


    int getBlueCount() {
                int count = 0;
        for (Cube[] row : grid) {
            for (Cube cube : row) {
                if (cube.getIsBlue()) {
                    count++;
                }
            }
        }
        return count;
    }


    int getGreenCount() {
                int count = 0;
        for (Cube[] row : grid) {
            for (Cube cube : row) {
                if (cube.getIsGreen()) {
                    count++;
                }
            }
        }
        return count;
    }


    int getYellowCount() {
                int count = 0;
        for (Cube[] row : grid) {
            for (Cube cube : row) {
                if (cube.getIsYellow()) {
                    count++;
                }
            }
        }
        return count;
    }



  //Reprints the grid with updated colors:
  void printCurrGrid() {
    for (int i = 0; i < grid.length; i++) {
      for (int j = 0; j < grid[0].length; j++) {
        grid[i][j].printCube(i * grid[i][j].getDims(), j * grid[i][j].getDims());
    }
      }
  } //closes printCurrGrid method
  
  
  
  
} //closes grid class
