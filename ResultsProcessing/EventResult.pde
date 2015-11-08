class EventResult
{
  
  String type;
  Float result;
  Float points;
  
  
  EventResult(String eventType, String athleteResult, String athletePoints)
  {
    type = eventType;
    
    //converting the string athletePoints into a float and setting result equal to it
    points = float(athletePoints);
    
    //convert athleteResult to a float and check if ther is a ":" in the string
    if (athleteResult.indexOf(":") != -1)    //'-1' meaning not present
    {
      //create an array splitting up the athleteResult string between the ':'
      String[] time = athleteResult.split(":");
      
      //convert each element into a float
      float minute = float(time[0]);
      float seconds = float(time[1]);
     
      //calculating the total time in seconds
      result = (minute * 60) + seconds;
      
    }
    
    else
    {
    //converting the string athleteResult into a float and setting result equal to it
    result = float(athleteResult);
    }
    
  }
  
  void printData()
  {
   println(" the event " + type + " got a result " + result + " with points " + points);
    
  }
  
  
}
