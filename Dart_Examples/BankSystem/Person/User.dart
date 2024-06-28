import '../Bank/BankAccount.dart';
import 'Person.dart';

class User extends Person {
  String _phoneNumber;
  BankAccount _bankAccount;

  User(int id, String name, String username, String password, this._phoneNumber,
      String accountNumber)
      : _bankAccount = BankAccount(accountNumber),
        super(id, name, username, password);

  // Getter for phone number
  String get phoneNumber => _phoneNumber;

  // Setter for phone number
  set phoneNumber(String phoneNumber) {
    _phoneNumber = phoneNumber;
  }

  // Method to deposit money
  void depositMoney(double amount) {
    _bankAccount.deposit(amount);
  }

  // Method to withdraw money
  void withdrawMoney(double amount) {
    _bankAccount.withdraw(amount);
  }

  // Method to transfer money to another user
  void transferMoney(User toUser, double amount) {
    _bankAccount.transfer(toUser._bankAccount, amount);
  }

  // Method to display user info and account balance
  void displayUserInfo() {
    print('User Info:');
    print('Name: $name');
    print('Username: $username');
    print('ID: $id');
    print('Phone Number: $phoneNumber');
    print('Account Balance: \$${_bankAccount.balance.toStringAsFixed(2)}');
  }

  // Method to display transaction history
  void displayTransactionHistory() {
    print('Transaction History for Account ${_bankAccount.accountNumber}:');
    for (var transaction in _bankAccount.transactionHistory) {
      print(transaction);
    }
  }

  // Method to display account balance
  void displayBalance() {
    print('Account Balance: \$${_bankAccount.balance.toStringAsFixed(2)}');
  }

  // Create account method
  static User createAccount(int id, String name, String username,
      String password, String phoneNumber, String accountNumber) {
    if (password.length >= 6) {
      return User(id, name, username, password, phoneNumber, accountNumber);
    } else {
      throw Exception('Password must be at least 6 characters long');
    }
  }
}
