// Similar to python, C++, Java etc. operator behave similar in dart.

void main() {

  int num = 10+2000;
  num--;
  print(num);

  var num2= num%5;
  print(num2);

  // Relational operator: ==, !=, >=, <=
  if(num==0){
    print('zero');
  }

  // Unary operator
  ++num;
  num += 1;
  

  // Logical operator: && (and), || (or)
  if(num<200 && num>10)
    print("yeah...");

  //---------------------------------------------------------------------------------------
  // Ternary Operator

  int x=100;
  var result = x%2 == 0? 'Even' : 'Odd';
  print('X is $result');

  //---------------------------------------------------------------------------------------
  // Type Test

  var fnum =0.123;
  if(fnum is double)
     print('fnum is double');

  //---------------------------------------------------------------------------------------
  // If-else Conditional Statement

  var guess = 13;

  if(guess == 11)
    print("You've gessed it right");
  else if (guess%2 == 0)
    print("You've entered even number");
  else 
    print("You've entered odd number");

  //---------------------------------------------------------------------------------------
  // Switch Conditional Statement

  switch(guess%2){
    case 1:
      print("You've entered odd number");
      break;
    case 0:
       print("You've entered even number");
       break;
    default:
      print('confused');
      

  }

}