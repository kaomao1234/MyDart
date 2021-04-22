import 'dart:io';
import 'dart:math';

main() {
  List<int> getinput = stdin.readLineSync().toString().codeUnits;
  var suminput = getinput
      .map((e) => pow(e, getinput.length))
      .toList()
      .reduce((value, element) => value + element)
      .toString()
      .split('')
      .map((e) => int.parse(e))
      .reduce((value, element) => value + element);
  m(suminput);
}

m(a) {
  a = a
      .toString()
      .split('')
      .map((e) => int.parse(e))
      .reduce((value, element) => value + element);
  if (a < 10) {
    print(a);
  } else {
    m(a);
  }
}
