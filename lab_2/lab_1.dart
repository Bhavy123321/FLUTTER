// WAP to check whether the given number is positive or negative.
import 'dart:io';

void main() {
  print("Enter Number :");
  int num = int.parse(stdin.readLineSync()!);
  if (num == 0) {
    print("NUMBER IS ZERO");
  } else if (num > 0) {
    print("NUMBER IS POSITIVE");
  } else {
    print("NUMBER IS NEGATIVE");
  }
}
