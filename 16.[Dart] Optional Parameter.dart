import 'dart:io';

void main() {
  showData('Paepae', 'Pithsanulork');
  showData('Mint');
}

showData(String name, [String city = 'กรุงเทพมหานคร']) =>
    print('Name = $name\nCity = $city');
// showData(String name, [String city = 'กรุงเทพมหานคร']) {
//   print('Name = $name\nCity = $city');
// }
