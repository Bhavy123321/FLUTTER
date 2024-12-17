// wap a programe to find percentage of subject.
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
print("your new persentage is $n subject is :$percentage %");
}
