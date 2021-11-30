import 'dart:io';

void main() {
  dynamic value = int.parse(stdin.readLineSync().toString()),
      value2 = int.parse('${stdin.readLineSync()}');
  print('Hello world');
  show();
  NumberShow(value, value2);
}

// ! void = ไม่มีการส่งค่ากลับ
void show() {
  print('Hello dart');
}

void NumberShow(arg1, arg2) {
  print(arg1 + arg2);
}
