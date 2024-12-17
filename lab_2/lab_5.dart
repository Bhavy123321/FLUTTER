// WAP to find out largest number from given 3 numbers using conditional operator. 
import 'dart:developer';
import 'dart:io';

void main() {
  print("Enter Frist Number :");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter Second Number :");
  int num2 = int.parse(stdin.readLineSync()!);
  print("Enter Number :");
  int num3 = int.parse(stdin.readLineSync()!);

  print("${num1>num2?num1>num3?'$num1 is largest':'$num3 is largest':'$num2 is largest'}");
}