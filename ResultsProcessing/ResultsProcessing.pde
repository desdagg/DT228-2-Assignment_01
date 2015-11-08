//ArrayList<Hurdles> hurdles = new ArrayList<Hurdles>();
//ArrayList<Shot> shot = new ArrayList<Shot>();
//ArrayList<LongJump> longjump = new ArrayList<LongJump>();
//ArrayList<Twohundred> twohundred = new ArrayList<Twohundred>();
//ArrayList<Eighthundred> eighthundred = new ArrayList<Eighthundred>();
//ArrayList<TotalScore> totalscore = new ArrayList<TotalScore>();
String EVT_TYP_FILE = "event_type.csv";
String RSLT_FILE = "results_4.csv";

void setup()
{
  size(1000, 1000);
  smooth();
  
  Competition comp = new Competition(EVT_TYP_FILE);
  comp.addResults(RSLT_FILE);
  comp.printEvents();
  testMethod();
  
}



void testMethod()
{
  //to test eventResult constructor
  EventResult eventResult1 = new EventResult("hurdles", "2:03.10", "590");
 eventResult1.printData(); 
  
  
}









void loadResults()
{
  String[] header;
  
  String[] athleteResults = loadStrings(RSLT_FILE);
  header = new String[athleteResults[0].split(",").length];
  arrayCopy(athleteResults[0].split(","), header);
   /*for (int i = 0 ; i < athleteResults.length ; i++)
    {
      
    }*/
  println(header);
    
}



void draw()
{
  background(84, 128, 161);
  
  
}
