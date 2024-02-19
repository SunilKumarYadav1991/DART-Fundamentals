// Dart is strongly typed language and its Object oriented language.
// Similar to python, everything in dart is object. 

void main() {
 
 /* Fundamental data types
    int
    double
    String
    bool
    dynamic
 */

  int amount1 = 200;
  var amount2 = 100;    // type deduced to int

  double dAmount = 10.1;

  String name = "Sunil";

  bool isItTrue = true;
  bool isItFalse = false;

  print('amount1= $amount1 and dAmount=$dAmount and isItTrue=$isItTrue');


  dynamic weakVariable =100;
  print ('weakVariable = $weakVariable');

  weakVariable =100.1;
  print ('weakVariable = $weakVariable');

  var s1 ='This is string';
  var s2 = "This is another string";
  var s3 = " This is string with escape sequence \'";

  var s = r'This is raw string \n \t with example '; // similar to python raw string.

  // ''' ''' or """ """ can be used for multi line string

  print(s1);
  print(s2);
  print(s3);
  print(s);

}