import 'dart:io';

void main() {
  List<String> color = ['red', 'white', 'green', 'blue'];
  List<int> number = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(color);
  color.remove('red'); //! ลบสมาชิก
  // number.removeRange(0, 3)//! ลบโดยระบุ index เริ่มต้นถึงend-1
  // number.removeAt(2)//! ลบสมาชิกที่index
  number.removeWhere((ele) => ele%5==0);//! ใส่เงื่อนไขเพื่อลบสมาชิกที่ตังเงื่อนไข
  print(number);
  }
