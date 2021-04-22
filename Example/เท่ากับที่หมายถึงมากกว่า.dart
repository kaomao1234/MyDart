import 'dart:io';

main() {
  var input = '${stdin.readLineSync()}'.split('==');
  input.map((e) => int.parse(e)).toList();
  print((input..sort())[input.length - 1]);
}
