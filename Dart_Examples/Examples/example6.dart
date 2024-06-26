import 'dart:math';

void main() {
  var randomNumbers = <int>[];

  for (int i = 0; i < 10; i++) {
    randomNumbers.add(Random().nextInt(35));
  }

  print(randomNumbers);

  randomNumbers.removeAt(9);

  print(randomNumbers);

  randomNumbers.removeRange(0, 3);

  print(randomNumbers);

  randomNumbers.removeWhere((item) => item > 15);

  print(randomNumbers);
}
