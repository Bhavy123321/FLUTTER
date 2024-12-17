// WAP to perform Addition, Subtraction, Multiplication, Division based on user choice using if, if..else..if, & switch.
import 'dart:ffi';
import 'dart:io';

void main() {
  print("Enter Frist Number :");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number :");
  int num2 = int.parse(stdin.readLineSync()!);
  print("enter oprator like /,*,-,+:");
  String op = stdin.readLineSync()!;
  // if (op == '+') {
  //   print("Addition of $num1 and $num2 is: ${num1 + num2}");
  // } else if (op == '-') {
  //   print("Subtraction of $num1 and $num2 is: ${num1 - num2}");
  // } else if (op == '*') {
  //   print("Multiplication of $num1 and $num2 is: ${num1 * num2}");
  // } else if (op == '/') {
  //   print("Division of $num1 and $num2 is: ${num1 / num2}");
  // }

switch(op){
  case '+':
  print("Addition of $num1 and $num2 is: ${num1 + num2}");
  break;
  case '-':
    print("Subtraction of $num1 and $num2 is: ${num1 - num2}");
  break;
  case '*':
    print("Multiplication of $num1 and $num2 is: ${num1 * num2}");
  break;
  case '/':
    print("Division of $num1 and $num2 is: ${num1 / num2}");
  break;
}
  
}
