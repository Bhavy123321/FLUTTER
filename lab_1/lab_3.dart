// wap to conver fahrenheit to celsius.
import 'dart:io';
void main(){
print(' if you want fahrenheit to celsius than type 1 and if you want celsius to fahrenheit than type 0 ');
int value =int.parse(stdin.readLineSync()!);
if (value==1){
  print("enter fahrenheit");
  double fahrenheit =double.parse(stdin.readLineSync()!);
  double celsius = 5/9 * (fahrenheit-32);
  print("your celsius is : $celsius");
}
else if(value==0){
  print("enter celsius");
  double celsius =double.parse(stdin.readLineSync()!);
  double fahrenheit = (celsius* 9/5) + 32;
  print("your celsius is : $fahrenheit");
}
else{
  print("enter valid number:");
}
}