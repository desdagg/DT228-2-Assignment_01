

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
     athletes.add(athlete);
     
    }
  }
  
  
  void drawPoints()
{
  //setting a border of ten percent for the barchart 
  float border = width * 0.1f;
  //setting the gap/width of the bars
  float gap = (float) (width - (border * 2.0f)) / athletes.size();
  //setting max to be the minimum value a float can be -- probably wont need this
  //float max = Float.MIN_VALUE;
  
  
  //create the border with values on Y axis
  stroke(248,248,255);
  //drawing the horizontal axis
  line(border, (height - border) + 1, width - border, (height - border) + 1);
  
  //drawing the vertical axis
  float tickSize = border * 0.1f;
  line(border - 1, border, border - 1, height - border);
  
  println("drawPoints got here " + athletes.size());
 for (Athlete athlete:athletes)
  {
    println(athlete.name + " " + athlete.getTotalPoints());
  }
  
  
  //try get a function to read the max athlete value.
  //use it to then round up to the nearest 500
  //then use that value for the mapping...
  //shouldnt be too hard, just a greater than loop or something.
  
  
   /* if (athlete.getTotalPoints() > max)
    {
      max = athlete.getTotalPoints() ;
    }
   
  }
  //setting the scalefactor to scale the points to fit in the drawing
  float scaleFactor = (float) (height - (border * 2)) / max;  
  println("got here scale factor is" + scaleFactor);*/
  for (int i = 0 ; i < athletes.size() ; i ++)
  {
    Athlete athlete = athletes.get(i);
    stroke(athlete.colour);
    fill(athlete.colour);
    float x = i * gap;
    //testing map instead of scalefactor
    float m = map(athlete.getTotalPoints(), 0, 3500, 0, height - (border * 2));
    rect(x + border, height - border, gap, -m /*(athlete.getTotalPoints() * scaleFactor)*/);
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
