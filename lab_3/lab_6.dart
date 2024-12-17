// WAP program to calculate the sum of all positive even numbers and the sum of all negative
// odd numbers from a set of numbers. you can enter 0 (zero) to quit the program and thus it
// displays the result.
import 'dart:io';

void main() {
  print("Enter numbers and press 0 to exit:");
  int evenPositive = 0; 
  int oddNegative = 0;

  while (true) { 
    print('Enter a number:');
    String? input = stdin.readLineSync();
    
    if (input == null || input.isEmpty) {
      print("Invalid input! Please enter a valid number.");
      continue;
    }

    int? num;
    try {
      num = int.parse(input);
    } catch (e) {
      print("Invalid input! Please enter a valid integer.");
      continue;
    }

    if (num == 0) {
      break; 
    }

    if (num > 0 && num % 2 == 0) {
      evenPositive += num;
    } else if (num < 0 && num % 2 != 0) {
      oddNegative += num; 
    }
  }

  print("\nResults:");
  print("Sum of all even positive numbers: $evenPositive");
  print("Sum of all odd negative numbers: $oddNegative");
}
