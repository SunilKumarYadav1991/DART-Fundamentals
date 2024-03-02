
class Example{
  static int count=0;                  // class attribute
  final int age;                       // Object attribute           

  Example(this.age){
    count++;
  }
}

void main() {

  Example e1 = Example(10);
  Example e2 = Example(110);

  print(Example.count);
}