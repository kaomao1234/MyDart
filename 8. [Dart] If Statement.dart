import 'dart:io';

void main() {
  var p = int.parse('${stdin.readLineSync()}'); //! รับค่าจากคีย์บอร์ด
  if (p == 100) {
    print(true);
  } else if (p is int) {
    print('OK i can run');
  }
  // ! Ternary operator
  var a = (p is int) ? 10 : false;
  var m = (p is String) ? 10 : false;
  print('$a != $m');
}
