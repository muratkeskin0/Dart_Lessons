import 'dart:io';

void main() {
  print("Vize notunuzu giriniz:");
  double? vize = double.parse(stdin.readLineSync()!);

  print("Final notunuzu giriniz:");
  double? finalNotu = double.parse(stdin.readLineSync()!);

  double ortalama = (vize * 0.4) + (finalNotu * 0.6);

  print("Ortalamanız: $ortalama");

  String harfNotu;

  switch (ortalama ~/ 10) {
    case 10:
    case 9:
      harfNotu = 'A';
      break;
    case 8:
      harfNotu = 'B';
      break;
    case 7:
      harfNotu = 'C';
      break;
    case 6:
      harfNotu = 'D';
      break;
    default:
      harfNotu = 'F';
  }

  print("Harf notunuz: $harfNotu");
}
