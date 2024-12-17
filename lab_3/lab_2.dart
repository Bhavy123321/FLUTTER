// WAP to find factorial of the given number.
import 'dart:io';

void main() {
  print("Enter Number :");
  int num = int.parse(stdin.readLineSync()!);

int ans = 1;
  for(int i = num ; i > 0 ; i-- ){
    ans = ans * i;
  }
  print("your ans is $ans");
}