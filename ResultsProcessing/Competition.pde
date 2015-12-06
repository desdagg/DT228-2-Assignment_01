

class Competition
{
    ArrayList<Athlete> athletes;
    ArrayList<EventType> eventTypes;
  
  
  
  //int flag1 = 0;
  
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
  //float tickSize = border * 0.1f;
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
    rect((x + border) + 1, height - border, gap, -m /*(athlete.getTotalPoints() * scaleFactor)*/);
    if (i == 2)
    {
      textAlign(CENTER);
      text("*Red is David", (x + border) + (gap/2), height - (border/2));
    }
  }
}



void drawMorePoints()
{
  pushMatrix();
  camera(70.0, 35.0, (height/2) / tan(PI/6) ,
         width/2, height/2, -200,
         0.0, 1.0, 0.0);
  float border = width * 0.1f;   
float gap = (float) (width - (border * 2.0f)) / athletes.size();
//stroke(248,248,255);
//outter box here

 // translate(border, height/2, -100);
 //translate(width/3, height/1.5, -100);

println("drawMorePoints got here" + athletes.size());
 for (Athlete athlete:athletes)
  {
    println(athlete.name + " " + athlete.getTotalPoints());
  }
  translate(border, height/2, -100);
    for (int i = 0 ; i < athletes.size() ; i ++)
  {
    pushMatrix();
    Athlete athlete = athletes.get(i);
    Athlete athlete1 = athletes.get(0);
    stroke(255);
    //stroke(athlete.colour);
    fill(athlete.colour);
    float x = i * gap;
    //testing map instead of scalefactor
    float max = map(athlete1.getTotalPoints(), 0, 3500, 0, height - (border * 2));
     float m = map(athlete.getTotalPoints(), 0, 3500, 0, height - (border * 2));
     float diff = 0;
     diff = (max - m)/2;
     
     if(i < 1)
     {
       println("got heere i<1");
      translate(0, 0, 0);
     }
     else
     {
       translate((gap * i) + 1, diff, 0); 
       println(diff);
       println(gap);
     }
     //sphere(m/5);
     box(gap, m, gap);
     popMatrix();
  }
popMatrix();
  
}

 
 
  
  void printEvents()
  {
    for (EventType event:eventTypes)
    {
      event.printData();
      
    }
    
  }
}
