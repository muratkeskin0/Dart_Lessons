main() {
  List<String> countries = List.filled(10, " ");
  countries[0] = "Türkiye";
  countries[1] = "Almanya";

  for (String country in countries) {
    print("en küçük şehirler $country");
  }

  List<int> numbers = List.filled(1, 0, growable: true);
  numbers[0] = 1;
  numbers[1] = 2;
  numbers[2] = 3;

  for (var number in numbers) {
    print(number);
  }
}
