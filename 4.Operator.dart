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
}