import 'dart:io';

void main() {
  List<String> username = ['Kong', 'Toto', 'Nat'];
  List<int> number = [1000, 2000, 3000];
  Map<int, String> data =
      username.asMap(); //todo List to Map ใช้เลขตำแหน่งมาเป็นkey
  Map<int, int> datanum = number.asMap();
}
