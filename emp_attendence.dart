// check whether employee is absent or present

import 'dart:math';

main(){
  const int isPresent = 1;
  int random = Random().nextInt(2);
  print(random);

  if(random == isPresent){
    print("Employee is Present");
  }else{
    print("Employee is Absent");
  }

}