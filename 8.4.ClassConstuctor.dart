/* 
Declare a constructor by creating a function with the same name as its class 
(plus, optionally, an additional identifier as described in Named constructors).
*/

class Point {
  double x = 0;
  double y = 0;

  // Generative constructor with initializing formal parameters:
  Point(this.x, this.y);    // this keyword similar to c++ this or python self
}


// Initializing formal parameters
/*
Dart has initializing formal parameters to simplify the common pattern of assigning 
a constructor argument to an instance variable. Use this.propertyName directly in the 
constructor declaration, and omit the body.

Initializing parameters also allow you to initialize non-nullable or final instance variables,
which both must be initialized or provided a default value:
 */
class Point2 {
  final double x;
  final double y;

  Point2(this.x, this.y);
  // Sets the x and y instance variables
  // before the constructor body runs.
}


//--------------------------------------------------------------------------------------------
// Named constructors
// Use a named constructor to implement multiple constructors for a class or to provide extra clarity:

const double xOrigin = 0;
const double yOrigin = 0;

class Point3 {
  final double x;
  final double y;

  Point3(this.x, this.y);

  // Named constructor
  Point3.origin()
      : x = xOrigin,
        y = yOrigin;
}

//--------------------------------------------------------------------------------------------
// Invoking a non-default superclass constructor

class Person {
  String? firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson().
  Employee.fromJson(super.data) : super.fromJson() {
    print('in Employee');
  }
}

void main() {
  var employee = Employee.fromJson({});
  print(employee);
  // Prints:
  // in Person
  // in Employee
  // Instance of 'Employee'
}