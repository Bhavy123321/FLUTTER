// WAP to find whether the given number is prime or not.
import 'dart:io';

void main() {
  print("Enter Frist Number :");
  int num = int.parse(stdin.readLineSync()!);

  if(num%num==0 && num%1==0){
    print("your number $num is prime number");
  }
  else{
    print("your number $num is not prime number");
  }
}