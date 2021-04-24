import 'dart:io';

main() {
  List floor_lst = [];
  Map rank_dir = {1: 'st', 2: 'nd'};
  while (true) {
    try {
      int numf = int.parse('${stdin.readLineSync()}');
      floor_lst.add(numf);
    } catch (event) {
      break;
    }
  }
  if (floor_lst.every((element) => [1, 2, 3, 4, 5].contains(element) == true) ==
      true) {
    //todo every คือ all ใน python
    floor_lst.sort();
    print("OK! Wait please\n---------------\nLift is arriving!");
    for (var i in floor_lst) {
      if (rank_dir.keys.toList().contains(i)) {
        print(
            "---------------\nLift is going up!\n---------------\nLift has reached the ${i}${rank_dir[i]} floor!");
      } else {
        print(
            "---------------\nLift is going up!\n---------------\nLift has reached the ${i}th floor!");
      }
    }
  } else {
    print('Error! Not have this floor');
  }
}