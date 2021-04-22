import 'dart:io';

main() {
  int money= int.parse('${stdin.readLineSync()}'),
      price = int.parse('${stdin.readLineSync()}'),
      piece,
      Coupon_get,
      Pan_get,
      Coupon_remain,
      Pan_remain,
      cur_coupon,
      cur_pan,
      sum = 0;
  List<int> sum_round = [];
  piece = money ~/ price;
  Coupon_get = piece;
  Pan_get = piece;
  while (true) {
    cur_coupon = Coupon_get;
    cur_pan = Pan_get;
    Coupon_get ~/= 2;
    Pan_get ~/= 4;
    Coupon_remain = cur_coupon - (2 * Coupon_get);
    Pan_remain = cur_pan - (Pan_get * 4);
    if ((Coupon_get + Pan_get) == 0) {
      break;
    }
    sum_round.add(Coupon_get + Pan_get);
    Coupon_get = sum_round[sum_round.length - 1] + Coupon_remain;
    Pan_get = sum_round[sum_round.length - 1] + Pan_remain;
  }
  sum_round.forEach((e) => sum += e); //todo วนลูปบรรทัดเดียว
  print('${piece+sum}');
}