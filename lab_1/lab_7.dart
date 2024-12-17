// wap a programe to check ugly number.
import 'dart:io';

void main() {
  print("enter number you want check :");
  double height = double.parse(stdin.readLineSync()!);
  print("enter weight :");
  double weight = double.parse(stdin.readLineSync()!);
  double bmi = (weight*0.4536)/((height*0.254)*(height*0.254)) ;
  print("your BMI index  is : $bmi");
}
