
void main(){

  showOutput(square(8));
  // calling Arrow Function =>
  showOutput(square2(5));

  //----------------------------------------------------------------------------
  // Anonymus funcion
  var list =['apple', 'orange', 'banana', 'kiwi'];

  list.forEach((item){
      print(item);
  });                      // Anonymus funcion inside forEach(...)

  //----------------------------------------------------------------------------
  // Named parameter
  print(sum(num2: 2, num1: 8));
  print(sum2(8));
  print(sum2(8, num2: 2));
  print(sum3(8));
}

dynamic square(var num){
  return num*num;
}

void showOutput(var msg){
  print(msg);
}

// Arrow Function =>  also called fat arrow function.
dynamic square2(var num) => num*num;

//----------------------------------------------------------------------------
// Named parameter: Python equivalnt of kwarg aka keyword arg
dynamic sum({var num1, var num2}) => num1+num2;

dynamic sum2(var num1, {var num2}) => num1+ (num2 ??0);           // Default value for named parameter via null aware operator

dynamic sum3(var num1, {var num2=0}) => num1+ num2 ;              // Default value for num2=0