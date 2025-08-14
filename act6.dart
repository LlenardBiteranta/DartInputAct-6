import 'dart:io';

void main() {

  stdout.write('enter your name: ');
  String? name = stdin.readLineSync();
  stdout.write('            section: ');
  String? section = stdin.readLineSync();
  stdout.write('            subject: ');
  String? subject = stdin.readLineSync();

  double? num1, num2, num3;

  stdout.write('enter your num1: ');
  String? num1Str = stdin.readLineSync();
  num1 = double.tryParse(num1Str ?? '');

  stdout.write('            num2: ');
  String? num2Str = stdin.readLineSync();
  num2 = double.tryParse(num2Str ?? '');

  stdout.write('            num3: ');
  String? num3Str = stdin.readLineSync();
  num3 = double.tryParse(num3Str ?? '');

  print('\noutput');
  print('${name ?? ''},${section ?? ''},${subject ?? ''}');

  print('\noutput');
  if (num1 != null && num2 != null && num3 != null) {
    double sum = num1 + num2 + num3;
    print('numoutput = $sum');

    double difference = num1 - num2 - num3;
    print('numoutput = $difference');

    if (num2 != 0) {
      double divisionMultiplication = num1 / num2 * num3;
      print('numoutput = $divisionMultiplication');
    } else {
      print('numoutput = Cannot divide by zero (num2 is 0) for the last operation.');
    }
  } else {
    print('Invalid numeric input. Please enter valid numbers.');
  }
}