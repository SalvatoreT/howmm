#Week 05
##Example
    int row[] = {2};
    int numRows = sizeof(row)/sizeof(int);
    int col[] = {3,4,5};
    int numCols = sizeof(col)/sizeof(int);

    void setup() {        
      off();
      for(int i=0; i<numRows; i++){
        digitalWrite(row[i], LOW);
      }
      for(int i=0; i<numCols; i++){
        digitalWrite(col[i], HIGH);
      }  
      on(0,0);
    }

    void loop() { 
      int disp1[2][2] = {{0,0},{0,1}};
      multiOn(disp1, 2, 1000);
      int disp2[2][2] = {{0,1},{0,2}};
      multiOn(disp2, 2, 1000);
      int disp3[2][2] = {{0,0},{0,2}};
      multiOn(disp3, 2, 1000);
    }

    void off() {
      for(int i=0; i<numRows; i++){
        pinMode(row[i], INPUT);
      }
      for(int i=0; i<numCols; i++){
        pinMode(col[i], INPUT);
      }
    }

    void on(int rowNum, int colNum) {
      off();
      pinMode(row[rowNum], OUTPUT);
      pinMode(col[colNum], OUTPUT);
    }

    void multiOn(int coords[][2], int numCoords, int timeMS) {
      for(int t=0; t<timeMS/numCoords; t++){
        for(int i=0; i<numCoords; i++){
          on(coords[i][0], coords[i][1]);
          delay(1);
        }
      }
    }
