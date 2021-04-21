import 'dart:io';

main() {
  Map<int, String> rank = {1: 'st', 2: 'nd'};
  var p = int.parse('${stdin.readLineSync()}');
  var a = (p > 2) ? '${p}th' : '${p}${rank[p]}';
  String process;
  if (p <= 5) {
    process =
        'OK! Wait please\n---------------\nLift is arriving!\n---------------\nLift is going up!\n---------------\nLift has reached the $a floor!';
  } else {
    process = 'Error! Not have this floor';
  }
  print(process);
}
