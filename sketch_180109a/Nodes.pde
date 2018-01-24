public class Nodes {
  private String name;
  private String[] info;
  private String[] numbers;
  private int numberLength;
  private int infoLength;
  Nodes prev;
  Nodes next;


  Nodes(String _name, int _size, String _info, Nodes _prev, Nodes _next) {
    name = _name;
    info = new String[_size];
    prev = _prev;
    next = _next;
    info = _info.split(",");
  }

  Nodes(String _name, Nodes _prev, Nodes _next) {
    info = null;
    name = _name;
    prev = _prev;
    next = _next;
  }

  Nodes(String[] playerinfo, String[] statAmount, Nodes _prev, Nodes _next) {
    name = playerinfo[0] + " " + playerinfo[1];
    int number = Integer.parseInt(statAmount[2]);
    int infoAmount = Integer.parseInt(statAmount[1]);
    numbers = new String[number];

    
    info = new String[infoAmount];
    for (int i = 0; i<infoAmount; i++) {
      info[i] = playerinfo[i+2];
    }

    for (int i = 0; i<number; i++) {
      numbers[i] = playerinfo[i+infoAmount+2];
    }
    numberLength = number;
    infoLength = infoAmount;
    prev = _prev;
    next = _next;
  }
  String getName() {
    return name;
  }

  String getInfo(int index) {
    return info[index];
  }

  String getNumbers(int index) {
    return numbers[index];
  }
  int getInfoLength() {
    return infoLength;
  }
  int getNumbersLength() {
    return numberLength;
  }
}