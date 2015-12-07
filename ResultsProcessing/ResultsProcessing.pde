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
  int btnwdth, btnhgt = 0;
  btnwdth = int(width*0.055);
  btnhgt = int(height*0.04);
  //testMethod();
  pushMatrix();
    cp5 = new ControlP5(this);
    
    //EventType event = new EventType(EVT_TYP_FILE);
    
    // create a toggle and change the default look to a (on/off) switch look
     cp5.addToggle("Dimension")
     .setPosition(width*0.02, height*0.3)
     .setSize(btnwdth, btnhgt)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setColorActive(color(255,50,00))
     .setColorBackground(color(50,0,50));
 
      cp5.addToggle("Hurdles")
     .setPosition(width*0.92, height*0.143)
     .setSize(btnwdth, btnhgt)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setColorActive(color(0,0,255))
     .setColorBackground(color(50,0,50));
    
      cp5.addToggle("LongJump")
     .setPosition(width*0.92, height*0.286)
     .setSize(btnwdth, btnhgt)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setColorActive(color(255,255,0))
     .setColorBackground(color(50,0,50));     
     
      cp5.addToggle("ShotPut")
     .setPosition(width*0.92, height*0.429)
     .setSize(btnwdth, btnhgt)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setColorActive(color(0,255,0))
     .setColorBackground(color(50,0,50));
     
      cp5.addToggle("Twohundred")
     .setPosition(width*0.92, height*0.571)
     .setSize(btnwdth, btnhgt)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setColorActive(color(255,150,0))
     .setColorBackground(color(50,0,50));   
   
      cp5.addToggle("Eighthundred")
     .setPosition(width*0.92, height*0.714)
     .setSize(btnwdth, btnhgt)
     .setValue(true)
     .setMode(ControlP5.SWITCH)
     .setColorActive(color(255,0,255))
     .setColorBackground(color(50,0,50));  
     
     
     
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
  float a = width * 0.07;
  float b = height/1.9;
  pushMatrix();
  //stroke(255);
  translate(a,b);
  rotate(HALF_PI);
  textFont(createFont("sans-serif",25));
  text("Athletes total points",0,0);
  popMatrix();
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


void Hurdles(boolean theFlag)
{
  if(theFlag == true)
  {
    
  }
  else
  {
    
  }
}


