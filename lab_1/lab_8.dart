// WAP to find all the prime numbers within a given range [start, end]. Example: Input: start = 10,  end = 20, Output: [11, 13, 17, 19]; Input: start = 1, end = 10, Output: [2, 3, 5, 7].

import 'dart:io';

void main(){
  print("Enter Starting index : ");
  int x = int.parse(stdin.readLineSync()!);
  print("Enter Ending index : ");
  int y = int.parse(stdin.readLineSync()!);
  int count=0;

  for(int i=x;i<=y;i++){
    if(x%i==0){
      count=count+1;
    }
  }
  if(count>0){
    print("it's not prime number");
  }
  else{
    print("$x");
  }

}