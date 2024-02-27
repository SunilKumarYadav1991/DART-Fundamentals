/* Dart is an object-oriented language with classes and mixin-based inheritance.
Every object is an instance of a class, and all classes except Null descend from Object.
Mixin-based inheritance means that although every class (except for the top class, Object?) 
has exactly one superclass, a class body can be reused in multiple class hierarchies.
Extension methods are a way to add functionality to a class without changing the class 
or creating a subclass. Class modifiers allow you to control how libraries can subtype a class.

Refer https://dart.dev/language/classes
*/

class Person {

  double? x;                                         // Declare instance variable x, initially null.
  double z = 0;                                      // Declare z, initially 0
  String? name;                                      // Member variable. Since constructor
  int? age;                                          // does not work similar to C++ ctor, 
                                                     // memeber variables are used null aware or initialized
  Person(String name, int age){
    print('Inside constructor');
    this.name=name;
    this.age=    this.age=0;
;
  }

  void showOutput(){
    print('Name: $name \n Age:$age');
  }
}

class Basic { 
   
     String name = " "; 
   
     String get nameField {                               // getter method
         return name; 
     } 
     void set nameField(String name) {                   // setter method
         this.name = name; 
     } 
     void result(){
         print(name);
    }
} 
 

void main(){

  //Person p = Person();
  Person p = Person('Sam', 88);
  p.name = 'Sunil';
  p.age = 30;
  p.showOutput();

  /* Note: Use ?. instead of . to avoid an exception when the leftmost operand is null during method invocation.
  If p is non-null, set a variable equal to its y value.
  var a = p?.y;

  Object creation with optional new keyword before the constructor name:
  var p1 = new Point(2, 2);
  var p2 = new Point.fromJson({'x': 1, 'y': 2});

  var a = const ImmutablePoint(1, 1); // Creates a constant
  var b = ImmutablePoint(1, 1);       // Does NOT create a constant
  assert(!identical(a, b));           // NOT the same instance!

  */

  Basic b = new Basic();
  b.name = "My name is sunil";
  b.result();

}