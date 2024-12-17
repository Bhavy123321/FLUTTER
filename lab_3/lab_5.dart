// WAP to print reverse string.

import 'dart:io';

void main() {
  print('Enter a string:');
  String str = stdin.readLineSync()!;
  String reversestr = "" ;
  for(int i = str.length ; i > 0 ; i--){
    reversestr += str[i-1];

  }
print("your reverse string is : $reversestr");



}

