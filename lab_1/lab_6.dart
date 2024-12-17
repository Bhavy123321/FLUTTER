// wap a programe to find BMI index.
import 'dart:io';

void main() {
  print("enter height :");
  double height = double.parse(stdin.readLineSync()!);
  print("enter weight :");
  double weight = double.parse(stdin.readLineSync()!);
  double bmi = (weight*0.4536)/((height*0.254)*(height*0.254)) ;
  print("your BMI index  is : $bmi");
}
