import 'dart:io';

void main() {
  dynamic person = stdin.readLineSync();
  print(person);
  print('คุณ $person\nอาศัยอยู่ที่ ${getCity()}\nอุณหภูมิ ${getWeather()}');
}

String getCity() {
  return 'ระยอง';
}

getWeather() {
  num temp = 20.25;
  return temp;
}
