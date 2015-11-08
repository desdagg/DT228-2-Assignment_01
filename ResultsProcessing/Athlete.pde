class Athlete
{
  ArrayList<EventResult> eventResults;
  
  String name;
  
  
  Athlete(String inName)
  {
     eventResults = new ArrayList<EventResult>();
    name = inName;
    
    
  }
  
  void addResult(String event, String result, String points)
  {
    EventResult eventResult = new EventResult(event, result, points);
    eventResults.add(eventResult);
  }
}
