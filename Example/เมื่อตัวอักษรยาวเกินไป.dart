import 'dart:io';

main() {
  String gettext = '${stdin.readLineSync()}';
  int sptext = int.parse('${stdin.readLineSync()}');
  var sum_text = (sptext < gettext.length)
      ? '${gettext.substring(0, sptext - 1)}...'
      : gettext;
  print(sum_text);
}
