import 'dart:io';

main() {
  var money = '${stdin.readLineSync()}'
      .split(' '); //! Split ใช้ก็ต่อเมื่อตัวแปรไม่ได้ระบุชนิด
  int money_number = int.parse(money[0]) * 4;
  print('$money_number Bath');
}
