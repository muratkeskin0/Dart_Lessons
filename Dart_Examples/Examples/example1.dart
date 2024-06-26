void main() {
  String password = "abcdefghwe";
  int passwordLength = 10;

  if (isLongEnough(passwordLength, password)) {
    print("Password is long enough.");
  } else {
    print("Password is not long enough.");
  }
}

bool isLongEnough(int passwordLength, String password) {
  if (password.length == passwordLength) {
    return true;
  } else {
    return false;
  }
}
