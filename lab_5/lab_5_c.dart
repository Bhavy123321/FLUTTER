//WAP that creates List with following value:“Delhi”, “Mumbai”, “Bangalore”, “Hyderabad” and  “Ahmedabad” Replace “Ahmedabad” with “Surat” in above List.
import 'dart:io';
void main() {
  List<String> l1 = ["Delhi","Mumbai","Bangalore","Hyderabad","Ahmedabad"];
  for(int i=0;i<l1.length;i++){
    if(l1[i]=="Ahmedabad"){
      l1[i]="Surat";
    }
  }
  print(l1);
}