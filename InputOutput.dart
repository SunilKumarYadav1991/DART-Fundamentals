// Example program to understand input output lib function

import 'dart:io';

void main() {
 
  stdout.writeln('What is your name?');
  // String name = stdin.readLineSync();  // This statement gave error in dart 3.0+ due to added null check. either change rhs to String? or var
  String? name = stdin.readLineSync();
  print('My name is $name');
}

// This is single line Comments

/*
This is multiline comment
*/

/// Documentation 