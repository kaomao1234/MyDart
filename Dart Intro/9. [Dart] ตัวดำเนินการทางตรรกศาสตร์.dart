import 'dart:io';

void main() {
  var p = int.parse('${stdin.readLineSync()}'),
      a = int.parse('${stdin.readLineSync()}');
  if (p == a || p != a) { // todo ||(or) &&(and) !(not)
    print('ok access');
  }
}
