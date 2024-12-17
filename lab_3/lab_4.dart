// WAP to print given number in reverse order.
import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  int reverseNumber = 0;
  while (number != 0) {
    int digit = number % 10;
    reverseNumber = reverseNumber * 10 + digit;
    number ~/= 10;
    stdout.write(digit);

  }
  print('Reverse number: $reverseNumber');
}

