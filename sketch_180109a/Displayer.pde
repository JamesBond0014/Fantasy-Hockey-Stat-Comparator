class Displayer {


  Displayer() {
  }


  void textDisplay(String name, int _x, int _y) {
    strokeWeight(10);
    fill(0);
    textAlign(CENTER, CENTER);
    text(name, _x, _y);
  }

  void drawBar(int x, int y, float bar_length, float bar_height,float totalLength) {
    color col1 = color(0, 255, 0);
    color col2 = color(255, 0, 0);
    strokeWeight(2);
    noStroke();
    fill(col1);
    rect(x, y, bar_length, bar_height);
    fill(col2);
    noStroke();
    rect(bar_length+x, y, (totalLength- bar_length), bar_height);
  }
}