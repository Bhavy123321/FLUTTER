//WAP to create and read phonebook dictionary.

import 'dart:io';

void main(){
  List<Map<String,dynamic>> Phonebook = [];
  while(true){
    print("Choose an option from below:");
    print("Enter 1 for Add contact:");
    print("Enter 2 for search a number:");
    print("Enter 3 for exit:");
    int choice = int.parse(stdin.readLineSync()!);

    switch(choice){
      case 1:
        print("Enter name: ");
        String name = stdin.readLineSync()!;
        print("Enter Mobile number: ");
        int num = int.parse(stdin.readLineSync()!);
        Phonebook.add({'Name': name, 'Number': num});
        break;

      case 2:
        print("Enter name to Search:");
        String st = stdin.readLineSync()!;
        for(int i=0;i<Phonebook.length;i++){
          if(Phonebook[i].containsValue(st)){
            print(Phonebook[i]);
          }
        }

        break;

      case 3:
        break;
    }
  }
}