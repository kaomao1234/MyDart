import 'dart:io';

void main() {
  stdout.write("Enter a number : ");
  dynamic num = int.parse(stdin.readLineSync().toString());
  switch (num) {
    case 10:
      num = num * 2;
      break;
    case 20:
      num = num * 3;
      break;
    default:
      num = null;
  }
  print(num);
}
