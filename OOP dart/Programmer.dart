import 'Employee.dart';

class Programmer extends Employee {
  Programmer(String name, double salary) : super(name, salary);
  void skill() => print('Devolop information');
   void showdata() {
    print('Devname : ' + super.getName());
    print('Salary : ' + super.getSalary().toString());
  }
}
