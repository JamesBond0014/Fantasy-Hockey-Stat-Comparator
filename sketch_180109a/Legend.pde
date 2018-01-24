import java.util.Map;

class Legend{
  

 
 Map <String, String> lookup_table = new HashMap <String, String>();
 
 Legend(String[] keys, String[] values){
    
    for (int i = 0;i<keys.length;i++){
     lookup_table.put(keys[i],values[i]);  
    }
    
 }
  
 
 public String getValue(String lookup_key){
  return (lookup_table.get(lookup_key));  
 }
  
}