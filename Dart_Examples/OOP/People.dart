class People {
  int _id;
  int _age;

  People(this._id, this._age);

  int get id => _id;
  set id(int value) {
    if (value > 0) _id = value;
  }

  int get age => _age;
  set age(int value) {
    if (value >= 18)
      _age = value;
    else
      print("Geçersiz yaş, güncellenmedi.");
  }
}
