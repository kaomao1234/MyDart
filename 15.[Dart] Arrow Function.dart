import 'dart:io';

void main() {
  stdout.write('Enter your name : ');
  String getCity() => 'ระยอง';
  getWeather() => 20.25;
  var Person = stdin.readLineSync(),
      address = getCity(),
      weather = getWeather();
  print('$Person live in $address\nTemperature is $weather Cํ');
}
