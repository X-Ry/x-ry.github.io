class College{
  String name;
  float[] values = new float[YEARS]; //array of floats (they could be ints but im gonna stick close to the tutorial.)
  int[] ranks = new int[YEARS]; //These are ranks ON THE VISUALIZATION. im assuming this breaks ties. ZERO INDEXED!
                                //these are NOT the ranks on the tsv file. That is values
                                //1st place = 0, 2nd place = 1, 3rd place = 2  // -1 = dont know
  color c;
  public College(String n){
    name = n;
    //initialize values of the arrays
    for(int i = 0; i < YEARS; i++){
      values[i] = 0;
      ranks[i] = TOP_VISIBLE+1; //dont know what rank is yet.
    }
    //c = color(random(50,200),random(50,200),random(50,200));
  }
}
