class Athlete
{
  ArrayList<EventResult> eventResults;
  
  String name;
  color colour;
  
  
  Athlete(String inName)
  {
     eventResults = new ArrayList<EventResult>();
    name = inName;
    //give the athlete a random colour
    colour = color(random(0,255),random(0,255),random(0,255));
    
  }
  
  void addResult(String event, String result, String points)
  {
    EventResult eventResult = new EventResult(event, result, points);
    eventResults.add(eventResult);
  }
  
  float getTotalPoints()
  {
    float totalPoints = 0;
    //retrieve all eventResult instances from eventResults arraylist
   for (EventResult eventResult:eventResults)
   {
     //adding up all the points an athlete got.
    totalPoints += eventResult.points;
   }
    
    return totalPoints;
  }
}
