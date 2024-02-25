void main() {

  //------------------------------------------------------------------------------------
  // For Loop
  // Standard for loop
  for(var i=0; i<10; i++)
    print(i);
  
  print('------------');

  // for in loop i.e. for range loop
  var nums=[1,2,3,4];

  for (var num in nums)
    print(num);

  for(var i=0; i<nums.length; i++)
    print(nums[i]);

  print('------------');

  // forEach loop
  nums.forEach((element) {print(element);});         // forEach is higher order function and with lambda we can print individual elements
  nums.forEach((n) => print(n));                     // Arrow function inside forEach()
  print('------------');
  //------------------------------------------------------------------------------------
  // While Loop

  int idx=8;

  while(idx > 0){
    print(idx);
    idx--;
  }
  print('------------');
  // Do-While Loop

  idx=5;

  do{
    print(idx);
    idx--;
  }
  while(idx > 0);

  // break and continue work  similar to C++, python, java etc.
}