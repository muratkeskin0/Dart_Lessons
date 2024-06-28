import 'Person.dart';

class Admin extends Person {
  String _role;

  Admin(int id, String name, String username, String password, this._role)
      : super(id, name, username, password);

  // Getter for role
  String get role => _role;

  // Setter for role
  set role(String role) {
    _role = role;
  }

  // A method specific to Admin class
  void displayAdminInfo() {
    print('Admin Info:');
    print('Name: $name');
    print('Username: $username');
    print('ID: $id');
    print('Role: $role');
  }

  // Create account method (static)
  static Admin createAccount(
      int id, String name, String username, String password, String role) {
    if (password.length >= 6) {
      return Admin(id, name, username, password, role);
    } else {
      throw Exception('Password must be at least 6 characters long');
    }
  }
}
