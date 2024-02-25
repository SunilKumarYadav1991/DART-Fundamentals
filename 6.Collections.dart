// List, Set and Map are inbuilt collection in Dart programming language.

void main(){
  //-------------------------------------------------------------------------
  // List

  List names =['Jack', 'Jill', 'John'];
  print(names.length);
  print(names);
  print(names.reversed);

  var names2 =['Jack', 'Jill', 33,787];
  for(var n in names2)
    print(n);

  List<String> strList =['Jack', 'Jill', 'John'];                       // Statically String type list
  strList.add('Sunil');
  print(strList);

  List constNames = const ['Jack', 'Jill', 'John'];                    // Constant list
  // constNames[1]= 'Sunil';                                           // Exception: Unsupported operation: Cannot modify an unmodifiable list

  var names3 = names;                                                  // Shallow copy similar to python etc
  var names4 = [...names];                                             // Deep copy: syntax similar to Java Script


  //-------------------------------------------------------------------------
  // Set

  var cars = {'BMW', 'TATA', 'FORD', 'BMW'};                          // Unique collection of items. BMW will appear only once.
  Set<String> cars2 = {'BMW', 'TATA', 'FORD', 'BMW'};
  print(cars);

  print(cars2.runtimeType);

  //-------------------------------------------------------------------------
  // Map aka hash map or dictionary

  Map phoneDictionary = {'Sunil': 7199, 'Jack': 7200, 'Jill': 7201};
  print(phoneDictionary['Jack']);

  Map<int,int> mii = {1:12, 2:22, 3:33};                             // Map of int key and int value
  mii[4]=44;
  print(mii);

  var msi = {'jack': 1, 'jill':2};
  print(msi);

}