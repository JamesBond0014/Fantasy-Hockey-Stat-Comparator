class Player {
 
 String name;
 String[] stringStats;
 String[] numberStats;
 int stringAmount,numberAmount;
 Player(String[] playerstats,int nameAmount, int stringStatAmount, int numberStatAmount){
   name = playerstats[1] + " "+playerstats[0];
   stringStats = new String[stringStatAmount];
   stringAmount = stringStatAmount;
   numberAmount = numberStatAmount;
   for (int i =0;i<stringStatAmount;i++){
     stringStats[i] = playerstats[i+nameAmount];
   }
   for (int i =0;i<numberStatAmount;i++){
     numberStats[i] = playerstats[i+nameAmount+stringStatAmount];
   }
 }
 
 String getStringStat(int index){
  return stringStats[index]; 
 }
 
 
 String getNumberStat(int index){
  return numberStats[index]; 
 }
  
 int getStringLength(){
  return stringAmount; 
 }
 int getNumberLength(){
  return numberAmount; 
 }
}