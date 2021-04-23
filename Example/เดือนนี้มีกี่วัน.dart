import 'dart:io';

main() {
  var input = '${stdin.readLineSync()}'
          .split(' ')
          .map((e) => int.parse(e))
          .toList(),
      m = input[0],
      y = input[1] - 543,
      ber = [1, 2, 3, 5, 7, 8, 10, 12];
  var a = ((ber..remove(2)).contains(m))
      ? 31
      : ([1, 2, 3, 5, 7, 8, 10, 12].contains(m) != true)
          ? 30
          : (y % 4 != 0)
              ? 28
              : (y % 100 != 0)
                  ? 29
                  : 28;
  print(a);
}
