class EventType
{
 String type;
 String unit;
 String colour;
  
  EventType(String line)
  {
   String[] parts = line.split(",");
   type = parts[0];
   unit = parts[1];
   colour = parts[2];
   //println(line);
  }
  
  void printData()
  {
   println(type + " measured in " + unit + " with colour " + colour);
    
  }
  
}
