void main() {
  var age = 20;
  age = 50; //* var เปลี่ยนค่าได้ แต่เปลี่ยนชนิดไม่ได้
  var pi = 3.14;
  var name = 'Kaomao';
  var isCheck = true;
  dynamic name2 = 'Kenk';
  name2 = 100; //* dynamic เปลี่ยนชนิดข้อมูลได้
  print(age);
  print(pi);
  print(name);
  print(name2);
  print(isCheck);
}
