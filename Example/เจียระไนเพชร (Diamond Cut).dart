import 'dart:io';

main() {
  List input =
      '${stdin.readLineSync()}'.split(' ').map((e) => int.parse(e)).toList();
  int n = input[0], r = input[1];
  for (var i = 0; i < r; i += 1) {
    var r_angle = '-' * (r - i), n_center = '*' * (n - ((r - i) * 2));
    print('${r_angle + n_center + r_angle}');
  }
  for (var i = 0; i < n - (r * 2); i += 1) {
    print('${'*' * n}');
  }
  for (var i = 1; i < r + 1; i += 1) {
    var r_angle = '-' * i, n_center = '*' * (n - (i * 2));
    print('${r_angle + n_center + r_angle}');
  }
}
