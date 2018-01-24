import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;
import javax.swing.JOptionPane;
import javax.swing.JFrame;
import processing.serial.*;

Linked_List name;
Nodes info;
Nodes curr;
Nodes [] chosen;
int current_choosing;
Displayer display;
int[] statAmount = new int[3];
Ratio_Bar[] ratios;

/*
input file format: 
 <int>,<int>,<int> ; (# of name cells, # of text cells, # of numerical data )
 key:
 info...
 
 */

void setup() {

  name = getInfo("/../test_info.txt");


  size(1400, 700);
  background(255);

  display = new Displayer();
  //ratios = new int[5];
  curr = name.first;
  current_choosing = 0;
  chosen = new Nodes[2];
  chosen[0] = name.first;
  chosen[1] = name.first.next;
}  



void draw() {
  background(255);
  updateNameText();
  display.textDisplay(chosen[0].getName(), width/2 - width/4, height/3 - height/4);
  display.textDisplay(chosen[1].getName(), width/2 + width/4, height/3 - height/4);

  draw_ratio_bar();
}



void updateNameText() {
  if (current_choosing ==0) {
    chosen[0] = curr;
  } else if (current_choosing == 1) {
    chosen[1] = curr;
  }
}

void draw_ratio_bar() {
  int bar_yposition;
  if (current_choosing >= 2) {
    for (int i= 0; i<5; i++) {
      print(ratios.length);
      bar_yposition = height/3-height/4+35*(i+1);
      display.drawBar(200, bar_yposition, ratios[i].getLength(), ratios[i].getHeight(), ratios[i].getTotalLength());
      display.textDisplay(chosen[1].getName(), width/2, bar_yposition-10);
    }
  }
}

void keyPressed() {
  if (key == 'd' || key == 'D') {
    if (current_choosing < 2) {
      curr = curr.next;
    }
  } else if (key == 'a' || key == 'A') {
    if (current_choosing <2) {
      curr = curr.prev;
    }
  }


  if (key == ENTER) {
    if (current_choosing == 0) {
      current_choosing += 1;
      curr = chosen[1];
    } else if (current_choosing == 1) {
      current_choosing += 1;
      print(chosen[1].getNumbersLength());
      ratios = new Ratio_Bar[chosen[1].getNumbersLength()];
      for (int i=0; i<chosen[1].getNumbersLength(); i++) {        
        ratios[i] = new Ratio_Bar (chosen[0].getNumbers(i), chosen[1].getNumbers(i), "temp_name");
      }
    }
  }

  if (key == 'c') {
    current_choosing =0;
    curr = chosen[0];
  }
}

Linked_List getNames(String fileName) {
  Reader names = new Reader(fileName);
  Linked_List playerNames = new Linked_List(names.getNextLine());
  String name;
  while ((name = names.getNextLine()) != null) {
    playerNames.addNode(name);
  }
  return playerNames;
}

Linked_List getInfo(String fileName) {
  Reader names = new Reader(fileName);
  String[] statAmounts = names.getNextLine().split(",");
  String[] legend = names.getNextLine().split(",");
  Linked_List playerNames = new Linked_List(names.getNextLine().split(","),statAmounts);
  
  String name;
  while ((name = names.getNextLine()) != null) {
    playerNames.addNode(name.split(","),statAmounts);
  }
  return playerNames;
}