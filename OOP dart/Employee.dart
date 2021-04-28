class Employee {
  //* คุณสมบัติ
  //* เป็น private
  late String _name ;
  late double _salary;
  Employee(name,salary) {
    //* constructor 
    
    print('Start create object');
  } 
  //* สร้างmethod
  void dev() {
    print('Code Method');
  }

  void showdata() {
    print('Name : ' + this._name);
    print('Salary : ' + this._salary.toString());
  }

  //* setter
  void setName(String name) => this._name = name;
  void setSalary(double salary) => this._salary = salary;
  //* getter
  String getName() => this._name;
  double getSalary() => this._salary;
}
