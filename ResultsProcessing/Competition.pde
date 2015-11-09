

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
       athletes.add(athlete);
     }
     
    }
  }
  
  
  void drawPoints()
{
  float gap = (float) width / athletes.size();
  float max = Float.MIN_VALUE;
  println("drawPoints got here " + athletes.size());
  for (Athlete athlete:athletes)
  {
    println(athlete.name + " " + athlete.getTotalPoints());
    if (athlete.getTotalPoints() > max)
    {
      max = athlete.getTotalPoints() ;
    }
  }
  
  float scaleFactor = (float) height / max;  
  for (int i = 0 ; i < athletes.size() ; i ++)
  {
    Athlete athlete = athletes.get(i);
    stroke(athlete.colour);
    fill(athlete.colour);
    float x = i * gap;
    rect(x, height, gap, - (athlete.getTotalPoints() * scaleFactor));
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
