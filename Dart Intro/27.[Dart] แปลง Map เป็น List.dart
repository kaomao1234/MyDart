import 'dart:io';

void main() {
  Map<String, String> color = {'#FF0000': 'red', '#FFFF00': 'yellow'}; 
  print(color.values);
  var code_color = color.keys.toList();//todo แปลงเป็นlist
  print(code_color);
}
