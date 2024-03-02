class Vehicle {
  String model;
  int year;

  Vehicle(this.model, this.year);
  void printDetails(){
    print(model);                                                   // this.model short hand notation.
    print(year);
  }
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
}