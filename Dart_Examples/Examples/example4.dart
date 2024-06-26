void main() {
  //Aritmetik ortalama:
  int start = 1;
  int end = 10;

  bool startBigger = isStartBigger(start, end);

  if (startBigger) {
    print("Start number is bigger than end number.");
  } else {
    double average = calculateAverage(start, end);
    print('Aritmetik ortalama: $average');
  }
}

//Aritmetik ortalama:
bool isStartBigger(int start, int end) {
  return start > end;
}

double calculateAverage(int start, int end) {
  int sum = 0;
  int count = 0;

  for (int i = start; i <= end; i++) {
    sum += i;
    count++;
  }

  return sum / count.toDouble();
}
