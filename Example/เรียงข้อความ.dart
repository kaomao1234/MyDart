import 'dart:io';

void main() {
  int loop = int.parse('${stdin.readLineSync()}');
  Map<int, String> sorttext = {};
  for (int i = 0; i < loop; i += 1) {
    String gettext = '${stdin.readLineSync()}';
    sorttext[gettext.length] = gettext;
  }
  List<int> sortlen = sorttext.keys.toList()..sort();
  String ans = '';
  for (var e in sortlen) {
    int index = sortlen.indexOf(e);
    if (index % 2 != 0) {
      ans = ans + '\n' + '${sorttext[e]}' + '\n';
    } else {
      ans = ans + '${sorttext[e]}';
    }
  }
}
