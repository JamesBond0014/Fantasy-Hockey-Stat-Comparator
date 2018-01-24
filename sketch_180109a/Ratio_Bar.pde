class Ratio_Bar {

  int stat1, stat2;
  String stat_name;
  static final int total_bar_length = 1000;
  static final int total_bar_height = 10;
  Ratio_Bar(String _stat1, String _stat2, String _stat_name ) {
    stat1= Integer.parseInt(_stat1.trim());
    stat2= Integer.parseInt(_stat2.trim());
    stat_name = _stat_name;
    //total_bar_length = 1000;
    //total_bar_height = 10;
  }


  float getLength(){
   return total_bar_length*stat1/(stat1+stat2);
  }
  
  float getTotalLength(){
    return total_bar_length;
  }
  
  float getHeight(){
   return total_bar_height; 
  }
  
  int getStat1(){
   return stat1; 
  }
  
  int getStat2(){
   return stat2;
  }
  




}