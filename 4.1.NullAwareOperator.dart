// Null Aware Operator are unique in comparision to C++ etc. There are three variation of this operator
// (?.), (??), (??=)

class Num{
  int num=100;
}

void main() {
  //---------------------------------------------------------------------------------
  // Null Aware Operator: (?.), (??), (??=)
  var nobj = Num();
  int n1 = nobj.num;

  print(n1);

  int n2;
  var n = Num();                        // Null object 
  //n2 = n?.num;                        // If n is not null object then assign obj.num member value to n2; else null as default value to n2.
  //print(n2);

  
  n2 = n?.num ?? 88;                   // If n is not null object then assign obj.num member value to n2; else deafult value 88
  print(n2);

  //---------------------------------------------------------------------------------
  int? myNum;                         // int myNum; gave error: Error: Non-nullable variable 'myNum' must be assigned before it can be used.
  print(myNum ??= 101);
  print(myNum);
  print(myNum.runtimeType);          // int type

}