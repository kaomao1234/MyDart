import 'Employee.dart';
import 'Programmer.dart';
import 'manager.dart';

main() {
  //*สร้าง object
  Manager manager = Manager('Somchai', 50000.0);
  manager.showdata();
  Programmer programmmer = Programmer('Jojo', 15000);
  programmmer.showdata();
  programmmer.skill();
}
