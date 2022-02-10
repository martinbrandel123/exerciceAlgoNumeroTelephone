
void setup () {

  
  //int[][] diagonalArray = triangle(4);
  //table(diagonalArray);

    int[][] superDiagonalArray = super_diagonal(4);
    println(flatten(superDiagonalArray));
}



void table (int[][] tab) {
  for (int i=0;i<tab.length;i++){
        for(int j=0;j<tab.length;j++){
          print(tab[i][j] + "\t");
        }
     println("\n");
  }
}

int[][] diagonal (int size) {
  int[][] emptyArray = new int[size][size];
  for (int i=0;i<emptyArray.length;i++){

          emptyArray[i][i] = 1;
  }
  return emptyArray;
}



int[][] triangle (int size) {
  int[][] triangleArray = new int[size][size];
  for (int i=0;i<triangleArray.length;i++){
        for(int j=i;j<triangleArray.length;j++){
                triangleArray[i][j] = 1;
            }
  }
  return triangleArray;
}


int[][] super_diagonal (int size) {
  int[][] superDiagonalArray = new int[size][size];
    for (int i=0;i<superDiagonalArray.length;i++){
                int num = 0;
             for(int j=0;j<superDiagonalArray.length;j++) {
                if(i < superDiagonalArray.length - num) {
                superDiagonalArray[i+num][i] = num;
                superDiagonalArray[i][i+num] = num; 
                num++; 
              }
        }       
  }
  return superDiagonalArray;
}
