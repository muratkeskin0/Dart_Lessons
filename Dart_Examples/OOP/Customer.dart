import 'People.dart';

class Customer extends People {
  String _name;

  Customer(this._name) : super(0, 0);

  void displayCustomer() {
    print("Müşteri Adı: $_name, ID: $id, Yaş: $age");
  }
}
