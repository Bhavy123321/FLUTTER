// WAP to read marks of five subjects. Calculate percentage and print class accordingly. Fail 
// below 35, Pass Class between 35 to 45, Second Class between 45 to 60, First Class between 60 
// to 70, Distinction if more than 70. 
import 'dart:io';
void main() {
  print("enter how many subject mark you enter :");
  int n = int.parse(stdin.readLineSync()!);
  int ans = 0;
  for (int i = 0; i < n; i++) {
    print("enter ${i+1} subject mark out of 100 :");
    int num = int.parse(stdin.readLineSync()!);
    ans += num;
  }
double percentage = (ans/n) ;
if(percentage<35.0){
  print("opps! your are FAIL keep focus on study");
}
else if (percentage>35 && percentage<45){
   print("you are pass in third divison");
}else if (percentage>45 && percentage<60){
   print("you are pass in second divison");
}
else if (percentage>60 && percentage<70){
   print("you are pass in frist divison");
}
else if (percentage>70){
   print("you are pass in Distinction divison");
}

}

