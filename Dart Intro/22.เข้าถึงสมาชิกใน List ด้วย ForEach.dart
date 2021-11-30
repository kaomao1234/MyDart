import 'dart:io';

void main() {
  List<int> i = [];
  dynamic lst = ['color', 'red', 'green', 'blue', 'alpha'];
  var allnum = 0, count = int.parse(stdin.readLineSync().toString());
  for (int round = 0; round < count; round += 1) {
    i.add(round);
  }
  print(i);
  for (var element in i) {
    allnum += element;
  }
  print(allnum);
  for (var c in lst) {
    print(c);
  }
}
