import 'dart:io';

main() {
  int row = int.parse('${stdin.readLineSync()}');
  for (var i = 0; i < row ~/ 3; i += 1) {//! ~/ floor division
    print('|  |  |');
  }
}
