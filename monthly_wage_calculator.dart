import 'dart:math';

main(){
  const int isPresent = 1;
  const int isPartTime = 2;
  const int isAbsent = 0;
  const int ratePerHour = 20;
  const totalWorkingHrs = 160;
  const totalWorkingDays = 20;

  int empHrs = 0;
  int empWorkingDays = 0;
  int dailyWage = 0;
  int monthlyWage = 0;

  do {
    int random = Random().nextInt(3);
    empWorkingDays++;

    switch (random) {
      case isPresent:
        empHrs += 8;
        dailyWage = empHrs * ratePerHour;

        monthlyWage = monthlyWage + dailyWage;
        print(empHrs);
        print(
            "Employee is full time:\nWage for day ${empWorkingDays}: $dailyWage\n");
        break;
      case isPartTime:
        empHrs += 4;
        dailyWage = empHrs * ratePerHour;

        monthlyWage = monthlyWage + dailyWage;
        print(empHrs);
        print(
            "Employee is half time:\nWage for day ${empWorkingDays}: $dailyWage\n");
        break;
      default:
        empHrs += 0;
        dailyWage = empHrs * ratePerHour;

        monthlyWage = monthlyWage + dailyWage;
        print("Employee is Absent\n");
    }
  }while(empHrs < totalWorkingHrs && empWorkingDays <
      totalWorkingDays);
  print("Employee completed ${empHrs} hours in ${empWorkingDays} days and earned Rs. ${monthlyWage}");
}