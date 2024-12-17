//WAP that prompts the user to enter 5 numbers, stores them in a List, and displays them in increasing order.
import 'dart:io';
void main(){
  List<int> Nums = [];

  for(int i=0; i<5 ; i++){
    print("Enter your ${i+1} number: ");
    int n = int.parse(stdin.readLineSync()!);

    Nums.add(n);
  }
  Nums.sort();
  print(Nums);
}