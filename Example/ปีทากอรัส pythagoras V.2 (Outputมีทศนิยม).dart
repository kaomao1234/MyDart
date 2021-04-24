import 'dart:io';
import 'dart:math';

main() {
  stdout.write('Enter a number : ');
  int a = int.parse('${stdin.readLineSync()}');
  stdout.write('Enter a number : ');
  int b = int.parse('${stdin.readLineSync()}');
  var c = sqrt(pow(a, 2) + pow(b, 2)).toStringAsFixed(2);
  print(c);
}
