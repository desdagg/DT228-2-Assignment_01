

class Competition
{
    ArrayList<Athlete> athletes;
    ArrayList<EventType> eventTypes;
  
  Competition(String eventFile)
  {
    athletes = new ArrayList<Athlete>();
    eventTypes = new ArrayList<EventType>();
   
    String[] lines = loadStrings(eventFile);
    for (int i = 0 ; i < lines.length ; i ++)
    {
      EventType event = new EventType(lines[i]);
      eventTypes.add(event);
      
    }
  }
  
  
  void addResults(String resultFile)
  {
    String[] lines = loadStrings(resultFile);
    
    String[] header = lines[0].split(",");
    
    for (int i = 1 ; i < lines.length ; i++)
    {
     String[] data = lines[i].split(",");
     
     Athlete  athlete = new Athlete(data[0]);
     for(int j = 1 ; j < data.length ; j+=2)
     {
      athlete.addResult(header[j], data[j], data[j+1]); 
       
     }
     
    }
  }
  
  
  void printEvents()
  {
    for (EventType event:eventTypes)
    {
      event.printData();
      
    }
    
  }
}
