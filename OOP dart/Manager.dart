import 'Employee.dart';

class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary); //* inheritance

   void showdata() {
    print('Manager name : ' + super.getName());
    print('Salary : ' + super.getSalary().toString());
  }
}
