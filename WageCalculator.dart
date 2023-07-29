// Wage for the day of the employee

import 'dart:math';

main() {
  const int isPresent = 1;
  const int isPartTime = 2;
  const int isAbsent = 0;
  const int ratePerHour = 20;

  int empHours = 8;

  int random = Random().nextInt(3);
  print(random);

  if (random == isPresent) {
    print("wage for the day: ${empHours * ratePerHour}");
  } else if (random == isPartTime) {
    empHours = 4;
    print("Wage for the day: ${empHours * ratePerHour}");
  } else {
    print("Employee is absent, hence no wage for the day");
  }
}