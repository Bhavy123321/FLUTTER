// wap a programe to find meter into feet.
import 'dart:io';

void main() {
  print("enter meter :");
  double meter = double.parse(stdin.readLineSync()!);
  double feet = meter*3.28;
  print("your $meter into feet is : $feet");
  
}
