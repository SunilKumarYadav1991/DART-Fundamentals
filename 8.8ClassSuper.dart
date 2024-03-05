/* Super parameters:
To avoid having to manually pass each parameter into the super invocation of a constructor,
you can use super-initializer parameters to forward parameters to the specified or 
default superclass constructor. This feature can't be used with redirecting constructors.
Super-initializer parameters have similar syntax and semantics to initializing formal parameters:
*/

class Vector2d {
  final double x;
  final double y;

  Vector2d(this.x, this.y);
}

class Vector3d extends Vector2d {
  final double z;

  // Forward the x and y parameters to the default super constructor like:
  // Vector3d(final double x, final double y, this.z) : super(x, y);
  Vector3d(super.x, super.y, this.z);
}

//Super-initializer parameters cannot be positional if the super-constructor invocation already has positional arguments, but they can always be named:

class Vector2D {
  // ...

  Vector2D.named({required this.x, required this.y});
}

class Vector3d extends Vector2D {
  // ...

  // Forward the y parameter to the named super constructor like:
  // Vector3d.yzPlane({required double y, required this.z})
  //       : super.named(x: 0, y: y);
  Vector3d.yzPlane({required super.y, required this.z}) : super.named(x: 0);
}


// Redirecting constructor

class Point {
  double x, y;

  // The main constructor for this class.
  Point(this.x, this.y);

  // Delegates to the main constructor.
  Point.alongXAxis(double x) : this(x, 0);
}