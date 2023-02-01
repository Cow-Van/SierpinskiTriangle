public class Triangle {
  private final float originalX;
  private final float originalY;
  private final float len;
  private final int transitionTimeStart;
  private final int transitionTimeEnd = 0;
  
  private float x;
  private float y;
  private int transitionTime;
  
  public Triangle(float x, float y, float len, int transitionTime) {
    this.originalX = x;
    this.originalY = y;
    this.len = len;
    this.x = x;
    this.y = y;
    this.transitionTimeStart = transitionTime;
    this.transitionTime = transitionTime;
  }
  
  public void update() {
    
  }
  
  public void show() {
    triangle(x, y, x + len / 2f, y - len, x + len, y);
  }
  
  public void randomPosition(float maxChange, float xOffset, float yOffset) {
    
  }
}
