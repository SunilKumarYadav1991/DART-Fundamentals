// Dart is strongly typed language and its Object oriented language.
// Similar to python, everything in dart is object. 

void main() {
 
 //---------------------------------------------------------------------------------------
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
  
  //---------------------------------------------------------------------------------------
  // Strings in Dart

  var s1 ='This is string';
  var s2 = "This is another string";
  var s3 = " This is string with escape sequence \'";

  var s = r'This is raw string \n \t with example '; // similar to python raw string.

  // ''' ''' or """ """ can be used for multi line string

  print(s1);
  print(s2);
  print(s3);
  print(s);

  //---------------------------------------------------------------------------------------
  // String to int/double conversion

  var one = int.parse('1');
  assert(one==1);

  // String to double conversion
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);                       // to enable assert, use --enable-asserts cli flag. 
                                                    // If assert fails then it throws Unhandled exception

  String oneAsString = 1.toString();                 // Since everything is object in dart, we can convert int to string via inbuild method.
  //print('oneAsString: $oneAsString');
  assert(oneAsString == '1'); 

  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14'); 

  //---------------------------------------------------------------------------------------
  // Constant

  const iConst = 0;                                  // int constant
  const int iConst2 = 10;                            // int constant
  //iConst =100;                                     // results in 'Error: Can't assign to the const variable 'iConst'.'
  const strConst = 'This is str';                    // String constant

  print('strConst: $strConst and runtime type:');
  print(strConst.runtimeType);                      // String
  print(iConst.runtimeType);                        // int

  int num;                                          // if variable left un initialized, default is null
  //print(num);                                     // compiler error: Error: Non-nullable variable 'num' must be assigned before it can be used.

  // Note: Use a type test operator rather than runtimeType to test an object's type. 
  // In production environments, the test 'object is Type' is more stable than the test 'object.runtimeType == Type'.

}