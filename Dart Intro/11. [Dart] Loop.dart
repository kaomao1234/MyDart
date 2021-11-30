import 'dart:io';

void main() {
  dynamic value = int.parse(stdin.readLineSync().toString());
  for (var i = 0; i <= value; i += 1) {
    if (i % 2 == 0) {
      continue;
    }
    print('For no. $i');
  }
  while (value >= 0) {
    print('While no. $value');
    value -= 1;
  }
  do {
    print('Do no. $value');
    value += 1;
  } while (value < 3);
}
