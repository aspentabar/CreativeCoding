//represents a singular cube on the grid:
class Cube {
  
  //Fields:
  int x;
  int y;
  
  int dims;
  
  int color1;
  int color2;
  int color3;
  
  boolean isRed;
  boolean isBlue;
  boolean isGreen;
  boolean isYellow;
  boolean isWhite;
  
  
  //Constructor:
  Cube() {
    this.x = 0;
    this.y = 0;
    this.dims = 50;
    this.color1 = 255;
    this.color2 = 255;
    this.color3 = 255;
    this.isRed = false;
    this.isBlue = false;
    this.isGreen = false;
    this.isYellow = false;
    this.isWhite = false;
    
  }
  
  
  
  //Methods:
  
  //Prints a single rectangle cube with the set color
  void printCube(int i, int j) {
    fill(color1, color2, color3);
    rect(i, j, dims, dims);
  }
  
  
  //Setters of colors:
  void setColor1(int currColorNum) {
    this.color1 = currColorNum;
  }
  
    void setColor2(int currColorNum) {
    this.color2 = currColorNum;
  }
  
    void setColor3(int currColorNum) {
    this.color3 = currColorNum;
  }
  
  
  //getters for color1 2 and 3:
  int getColor1() {
    return this.color1;
  }
  
    int getColor2() {
    return this.color2;
  }
  
    int getColor3() {
    return this.color3;
  }
    
  
  
  void setAllToFalse() {
    this.isRed = false;
    this.isBlue = false;
    this.isGreen = false;
    this.isYellow = false;
  }
    
  
  
  
  //getter of dims:
  int getDims() {
    return dims;
  }
  
  
  //setter for the booleans of the colors:
  void setIsRed(boolean currBoolean) {
    this.isRed = currBoolean;
  }
  
  void setIsBlue(boolean currBoolean) {
    this.isBlue = currBoolean;
  }
  
  void setIsGreen(boolean currBoolean) {
    this.isGreen = currBoolean;
  }
  
  void setIsYellow(boolean currBoolean) {
    this.isYellow = currBoolean;
  }
  
  void setIsWhite(boolean currBoolean) {
    this.isWhite = currBoolean;
  }
  
  
  //Sets the dims of x and y of a cube:
  void setX (int xVal) {
    this.x = xVal;
  }
  
  void setY (int yVal) {
    this.y = yVal;
  }
  
  
  //getters for boolean colors:
  boolean getIsWhite() {
    return this.isWhite;
  }
  
    boolean getIsRed() {
    return this.isRed;
  }
  
    boolean getIsBlue() {
    return this.isBlue;
  }
  
    boolean getIsGreen() {
    return this.isGreen;
  }
  
    boolean getIsYellow() {
    return this.isYellow;
  }
  
  
  boolean isColored() {
    return isRed || isBlue || isGreen || isYellow;
  }
  

} //closes cube class
