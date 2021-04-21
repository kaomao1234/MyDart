import 'dart:io';

main() {
  String sentence = '${stdin.readLineSync()}';
  List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
  String filvowel = '', nonevowel = '';
  final char = RegExp("[A-Za-z]");
  var filter = char.allMatches(sentence).map((e) => e[0]).toList();
  for (var i = 0; i < filter.length; i += 1) {
    if (vowel.contains(filter[i])) {
      //todo .contain() == in ในไพทอน ใช้หาว่าเป็นสมาชิกจริงไหม
      filvowel += '${filter[i]}';
    } else {
      nonevowel += '${filter[i]}';
    }
  }
  print('$filvowel\n$nonevowel');
}
