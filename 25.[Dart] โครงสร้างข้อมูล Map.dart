import 'dart:io';

void main() {
  Map<int, int> number = {1: 100, 2: 500};
  Map<String, String> color = {'#FF0000': 'red', '#FFFF00': 'yellow'};
  Map<int, String> code = {404: 'Not found', 200: 'ok'};
  color['#0000FF'] = 'blue';
  color['#FFA500'] = 'orange';
  color.remove('#FFA500');
  print(color);
}
