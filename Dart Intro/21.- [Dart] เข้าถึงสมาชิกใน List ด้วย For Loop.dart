import 'dart:io';

void main() {
  int count = int.parse('${stdin.readLineSync()}');
  List<int> number = [];
  for (int i = 0; i < count; i += 1) {
    number.add(i);
    print(number[i]);
  }
  print(number);
}
