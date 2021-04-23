import 'dart:io';

main() {
  dynamic number = int.parse('${stdin.readLineSync()}');
  List<int> prime_number = [];
  Map Factor_num = {};
  List con_fact = [];
  for (var i = 1; i < number + 1; i += 1) {
    int count = 0;
    for (var j = 1; j < i + 1; j += 1) {
      if (i % j == 0) {
        count += 1;
      }
    }
    if (count == 2 && i != 1 && number % i == 0) {
      prime_number.add(i);
    }
    prime_number.forEach((element) => Factor_num[element] = 0);
  }
  for (var i in Factor_num.keys.toList()) {
    while (true) {
      if (number % i == 0) {
        number /= i;
        Factor_num[i] += 1;
      } else {
        break;
      }
    }
  }
  for (var key in Factor_num.keys.toList()) {
    if (Factor_num[key] >= 2) {
      Factor_num[key] = '$key^${Factor_num[key]}';
    } else {
      Factor_num[key] = '$key';
    }
  }
  con_fact.addAll(Factor_num.values.toList());
  print(con_fact.join(' * '));
}