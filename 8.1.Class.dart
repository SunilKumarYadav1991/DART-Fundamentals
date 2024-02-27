/* Initializing a non-late instance variable where it's declared sets the value when the instance is created, 
before the constructor and its initializer list execute. As a result, the initializing expression (after the =) 
of a non-late instance variable can't access this.
*/


double initialX = 1.5;

class Point {
  // OK, can access declarations that do not depend on `this`:
  double? x = initialX;

  // ERROR, can't access `this` in non-`late` initializer:
  double? y = this.x;

  // OK, can access `this` in `late` initializer:
  late double? z = this.x;

  // OK, `this.fieldName` is a parameter declaration, not an expression:
  Point(this.x, this.y);
}

/* Instance variables can be final, in which case they must be set exactly once. 
Initialize final, non-late instance variables at declaration, using a constructor parameter, or using a constructor's initializer list:
*/
class ProfileMark {
  final String name;
  final DateTime start = DateTime.now();

  ProfileMark(this.name);
  ProfileMark.unnamed() : name = '';
}