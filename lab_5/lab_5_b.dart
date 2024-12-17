//WAP to read 2 list and return list that contains only the elements that are common between them.

import 'dart:io';
void main(){
  List<int> l1 = [];
  print("Enter size of list1: ");
  int n1 = int.parse(stdin.readLineSync()!);
  List<int> l2 = [];
  print("Enter size of list2: ");
  int n2 = int.parse(stdin.readLineSync()!);
  List<int> l3 = [];


  for(int i=0;i<n1;i++){
    print("Enter your first list's ${i+1} number: ");
    int n = int.parse(stdin.readLineSync()!);

    l1.add(n);
  }
  for(int i=0;i<n2;i++){
    print("Enter your second list's ${i+1} number: ");
    int m = int.parse(stdin.readLineSync()!);

    l2.add(m);
  }

  for(int i=0;i<l1.length;i++){
    if(l1.contains(l2[i])) {
      l3.add(l2[i]);
    }
  }
  print(l3);
}