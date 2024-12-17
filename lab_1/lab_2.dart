// wap to print addition of two number.
import 'dart:io';
void main(){
  print("enter first number");
  int num1 =int.parse(stdin.readLineSync()!);
  print("enter second number");
  int num2 =int.parse(stdin.readLineSync()!);
  int ans = num1 + num2;
  print("your sum of $num1 and $num2 is  : $ans");

}