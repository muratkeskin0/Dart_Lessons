class Person {
  String _name;
  String _username;
  int _id;
  String _password;

  Person(this._id, this._name, this._username, this._password);

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String name) {
    _name = name;
  }

  // Getter for username
  String get username => _username;

  // Setter for username
  set username(String username) {
    _username = username;
  }

  // Getter for id
  int get id => _id;

  // Setter for id
  set id(int id) {
    _id = id;
  }

  // Getter for password
  String get password => _password;

  // Setter for password
  set password(String password) {
    if (password.length >= 6) {
      _password = password;
    } else {
      throw Exception('Password must be at least 6 characters long');
    }
  }

  // Login method
  bool login(String username, String password) {
    return this._username == username && this._password == password;
  }

  // Create account method (static)
  static Person createAccount(
      int id, String name, String username, String password) {
    if (password.length >= 6) {
      return Person(id, name, username, password);
    } else {
      throw Exception('Password must be at least 6 characters long');
    }
  }

  // Delete account method
  void deleteAccount() {
    _name = '';
    _username = '';
    _id = 0;
    _password = '';
    print('Account deleted successfully');
  }

  // Change password method
  void changePassword(String oldPassword, String newPassword) {
    if (_password == oldPassword) {
      if (newPassword.length >= 6) {
        _password = newPassword;
        print('Password changed successfully');
      } else {
        throw Exception('New password must be at least 6 characters long');
      }
    } else {
      throw Exception('Old password does not match');
    }
  }
}
