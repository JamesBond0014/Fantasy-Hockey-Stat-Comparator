class Linked_List {
  Nodes first;
  Nodes last;
  Linked_List (String _name, int _size, String _info ) {
    first = new Nodes(_name, _size, _info, null, null);
    last = first;
  }

  Linked_List (String _name) {
    first = new Nodes(_name, null, null);
    last = first;
  }
  
  Linked_List(){
    first = new Nodes("",null,null);
    last = first;
  }

  Linked_List(String[] info,String[] statSize){
   first = new Nodes(info,statSize,null,null);
   last = first;
  }

  void addNode(String _name, int _size, String _info) {
    Nodes temp = new Nodes( _name, _size, _info, last, first);
    last.next = temp;
    first.prev = temp;
    last = temp;
  }
  
  void addNode(String[] info,String[] statSize) {
    Nodes temp = new Nodes(info,statSize,last,first);
    last.next = temp;
    first.prev = temp;
    last = temp;
  }

  void addNode(String _name) {
    Nodes temp = new Nodes( _name, last, first);
    last.next = temp;
    first.prev = temp;
    last = temp;
  }
}