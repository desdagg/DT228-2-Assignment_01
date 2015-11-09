//defining the input file names
String EVT_TYP_FILE = "event_type.csv";
String RSLT_FILE = "results_4.csv";

void setup()
{
  size(500, 500);
  smooth();
  
  //
  Competition comp = new Competition(EVT_TYP_FILE);
  comp.addResults(RSLT_FILE);
  comp.printEvents();
  comp.drawPoints();
  testMethod();
  
}



void testMethod()
{
  //to test eventResult constructor
  EventResult eventResult1 = new EventResult("hurdles", "2:03.10", "590");
 eventResult1.printData(); 
  
  
}





void draw()
{
  //background(84, 128, 161);
  
  
}
