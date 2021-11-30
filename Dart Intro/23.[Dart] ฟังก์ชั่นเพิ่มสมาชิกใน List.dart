import 'dart:io';

void main() {
  List<String> color = ['red', 'white', 'green', 'blue'];
  dynamic icolor = stdin.readLineSync();
  color.add(icolor);
  print('add $icolor\n$color');
  List<String> new_color = ['lime', 'cyan', 'orange', 'yellow'];
  color.addAll(new_color); //todo เพิ่มสมาชิกครั้งละหลายตัว
  print(color);
  color.insert(1, 'skyblue'); //todo แทรกไปในลำดับที่1
  print(color);
  color.insertAll(2, ['brown', 'khaki']); //todo แทรกทีละหลายค่า
  print(color);
}
