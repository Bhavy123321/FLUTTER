// WAP to find out largest number from given three numbers without using Logical Operator.
import 'dart:developer';
import 'dart:io';

void main() {
  print("Enter Frist Number :");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number :");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter Number :");
  int num3 = int.parse(stdin.readLineSync()!);
  if (num1 > num2) {
    if (num1 > num3) {
      print("$num1 is Largest.");
    } else {
      print("$num3 is Largest.");
    }
  } else if (num2 > num3) {
    print("$num2 is Largest.");
  } else {
    print("$num3 is Largest.");
  }
}
