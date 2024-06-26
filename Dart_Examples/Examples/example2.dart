import 'dart:io';

void main() {
  print("Birinci sayıyı giriniz:");
  double? sayi1 = double.parse(stdin.readLineSync()!);

  print("İkinci sayıyı giriniz:");
  double? sayi2 = double.parse(stdin.readLineSync()!);

  print("Üçüncü sayıyı giriniz:");
  double? sayi3 = double.parse(stdin.readLineSync()!);

  double ortalama = (sayi1 + sayi2 + sayi3) / 3;

  print("Girdiğiniz sayıların ortalaması: $ortalama");
}
