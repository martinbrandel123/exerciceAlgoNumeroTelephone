String numberToTest = ".6 01.02.03 04" ;

void setup () {
  String rightFormatNumber = getRightNumberFormat(numberToTest);
  println(rightFormatNumber);
}

String getRightNumberFormat (String word) {
  // trouver un moyen de voir si un caractere est un nombre ou non // 
  char charDot = '.';
  char charBlank = ' ';
  String endOfNumber = "";

  for (int i = 0; i < numberToTest.length(); i++) {
    if (word.charAt(i) != charDot && word.charAt(i) != charBlank) {
      endOfNumber += word.substring(i, i + 1);
    }
  }
  String indexNumber = "+33"; 
  String rightFormatNumber = indexNumber + endOfNumber;
  return rightFormatNumber;
}
