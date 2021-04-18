import 'dart:io';

void main() {
  int numMounth = int.parse('${stdin.readLineSync()}');
  String mounth = getMouth(numMounth);
  print('$numMounth is $mounth');
}

getMouth(int number) {
  Map mounth = {
    1: 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'Jun',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December'
  };
  dynamic output = (number > 12)
      ? 'Not have this mounth'
      : (number < 1)
          ? 'Not have this mounth'
          : mounth[number];
  return output;
}
