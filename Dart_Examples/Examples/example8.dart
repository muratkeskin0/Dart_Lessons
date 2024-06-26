import 'dart:io';

void main() {
  List<int> numbers = [];

  while (true) {
    print('Enter an integer number (or -1 to stop): ');
    String? input = stdin.readLineSync()!;
    int number = int.parse(input);

    if (number == -1) {
      break;
    }

    numbers.add(number);
  }

  if (numbers.isEmpty) {
    print('List is empty. Cannot calculate average.');
  } else {
    double average = numbers.reduce((a, b) => a + b) / numbers.length;

    print('Average of the numbers: $average');
  }
}
