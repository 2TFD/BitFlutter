// void main(){
//   List<int> arr = [4,1,3,5];

//   final bool T = true;

//   if(T && true){
//     print('1');
//   }

// for(int i = 0; i < 10; i++){
//   print(i);
// }

// int i = 0;

// while(i < 10){
//   i++;
//   print(i);
// }

// arr.forEach((int elem) {
//   print(elem);
// });

// List<int> newarr =
//   arr.map((int elem){
//     return elem * 2;
//   }).toList();

// print(newarr);

// switch(String){
//   case 'value':
//     break;
//   default:
//     print('deff');
// }

// }

import 'dart:math';

void main() {
  // 1
  int age = 22;
  print(age);
  age = 38;
  print(age);

  //2

  int value1 = 1;
  int value2 = 2;
  int vlaue3 = 3;

  var averageValue = (value1 + value2 + vlaue3) / 3;
  print(averageValue);

  //3

  var res = 365 / 7;
  print(res);

  //4
  int myAge = 17;
  if (myAge < 16) {
    const bool isChild = true;
    print(isChild);
  } else {
    const bool isChild = false;
    print(isChild);
  }

  //5

  final int tomAge = 10;
  final int bobAge = 12;

  if (bobAge < 16 && tomAge < 16) {
    const bool ared = true;
    print(ared);
  } else {
    const bool ared = false;
    print(ared);
  }

  //6

  int score = 66;
  if (score > 50) {
    print('зачет сдан');
  } else {
    print('зает не сдан');
  }

  //7

  for (int i = 2; i <= 64; i++) {
    print(pow(2, i));
  }

  //8

  void sayHello(String name) {
    print("Hello, $name");
  }

  sayHello('qwe');

  //9

  void sayanyHello(String name, int i) {
    for (int j = 0; j < i; j++) {
      print('Hello, $name');
    }
  }

  sayanyHello('name', 6);

  //10
}
