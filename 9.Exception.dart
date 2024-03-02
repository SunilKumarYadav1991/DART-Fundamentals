// Simple example to get familiarize with the Exception handling in Dart

int mustBePositiveNumber(int val){
  if(val<0)
    throw Exception("Value must be 0 or positive");

  return val;
}

void verifyPositiveNumber(var input){

  var value;

  try {
    value = mustBePositiveNumber(input);
  } 
  catch(exp){                         // catch all exceptions
    print(exp);
  } 
  finally {
    if(value == null) {
      print('Value not positive');
     } else {
       print('$value is a positive number');
     }
  }

}

void main(){

  verifyPositiveNumber(-1);

}

/*
Similar to Python, C++, Java etc, we can catch specific exceptions first and then general one. e.g.

try{
  someOperation();
} on OutOfOperationException {
  // do some specific operation 
} on Exception catch (e) {
  print('unknown expetion: $e');
} catch(e) {
  // not specific type, handle all
}

 */