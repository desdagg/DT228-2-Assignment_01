ArrayList<Hurdles> hurdles = new ArrayList<Hurdles>();
ArrayList<Shot> shot = new ArrayList<Shot>();
ArrayList<LongJump> longjump = new ArrayList<LongJump>();
ArrayList<Twohundred> twohundred = new ArrayList<Twohundred>();
ArrayList<Eighthundred> eighthundred = new ArrayList<Eighthundred>();
ArrayList<TotalScore> totalscore = new ArrayList<TotalScore>();


void setup()
{
  size(1000, 1000);
  smooth();
  
  loadResults();
}


void loadResults()
{
  String[] lines = loadStrings("results.txt");
 // for (int i = 0 ; i < lines.length ; i++)
  //{
    println(lines);
    
}



void draw()
{
  background(84, 128, 161);
  
  
}
