
//The snowflake class holds the state of a snowflake:
class Snowflake {
  
  //Declarations Fields:
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float size;

  //Constructor for a snowflake:
  Snowflake () {
    xPos = random(width);
    yPos = random(height);
    xSpeed = random(3, -3);
    ySpeed = random(2);
    size = random(10);
}

  //Prints the snowflake and animates acrosss the screen:
  void printSnowFlake () {
    fill(255);  
    ellipse(xPos, yPos, size, size);
    xPos += xSpeed;
    yPos += ySpeed;
    } //closes printSnowFlake method
  
} //closes Snowflake class
