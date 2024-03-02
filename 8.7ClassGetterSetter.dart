// Dart by default provides getters and setters but developers can override with own getter and setter
// using get and set keyword

class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year);

  void printDetails(){
    print(model);                                                   // this.model short hand notation.
    print(year);
  }

  int get makeYear => this.year;                                   // getter method to get year of make from makeYear variable
  set makeYear(int x) => this.year = x;                            // setter method to set value to makeYear variable
}

class Car extends Vehicle{
  double price;                                                     // Extra member var in child class

  Car(String model, int year, this.price): super (model, year);     // Initilized parent class via super()

  @override                                                        // optional but act as type check at compile time. Similar to C++ override keyword...
  void printDetails(){
    super.printDetails();
    print(this.price);
  }
}

void main(){

  var car1 = Car('Nexon', 2024, 1500000);
  car1.printDetails();

  var v = Vehicle('Harrier', 2019);
  v.printDetails();
  print(v.makeYear);
  v.makeYear=2020;
  print(v.makeYear);

}