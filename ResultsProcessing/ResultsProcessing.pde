import controlP5.*;
ControlP5 cp5;

int flag1 = 0;

//defining the input file names
String EVT_TYP_FILE = "event_type.csv";
String RSLT_FILE = "results_4.csv";




void setup()
{
  size(1000, 800, P3D);
  smooth();
  background(0);
  //Competition comp = new Competition(EVT_TYP_FILE);
  //comp.addResults(RSLT_FILE);
  //comp.printEvents();
//  comp.drawPoints();
  
  //testMethod();
  pushMatrix();
    cp5 = new ControlP5(this);
    // create a toggle and change the default look to a (on/off) switch look
     cp5.addToggle("Dimension")
     .setPosition(20,250)
     .setSize(55,40)
     .setValue(true)
     .setMode(ControlP5.SWITCH);
  popMatrix();
//  if (flag1 == 1)
//  {
//    twobars();
//  }
  
  
}


/*void testMethod()
{
  //to test eventResult constructor
  EventResult eventResult1 = new EventResult("hurdles", "2:03.10", "590");
 eventResult1.printData(); 
  
  
}
*/

void twobars()
{
  Competition comp = new Competition(EVT_TYP_FILE);
  comp.addResults(RSLT_FILE);
  comp.printEvents();
  comp.drawPoints();
  
}

void threebars()
{
  Competition comp = new Competition(EVT_TYP_FILE);
  comp.addResults(RSLT_FILE);
  comp.printEvents();
  comp.drawMorePoints();
}


void draw()
{

//while(flag1 == 0)
//{
//    camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
//}
  
}


void Dimension(boolean theFlag) {
  if(theFlag==true) 
  {
    background(0);
    flag1 = 1;
    println("toggle engaged");
    twobars();
  } 
  
  else 
  {
    background(0);

    flag1 = 0;
    println("disengaged");
    threebars();
    
  }
  
} 
