class BankAccount {
  String _accountNumber;
  double _balance;
  late List<String> _transactionHistory;

  BankAccount(this._accountNumber, [this._balance = 0]) {
    _transactionHistory = [];
  }

  // Getter for account number
  String get accountNumber => _accountNumber;

  // Getter for balance
  double get balance => _balance;

  // Getter for transaction history
  List<String> get transactionHistory => _transactionHistory;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      _transactionHistory.add('Deposited: \$${amount.toStringAsFixed(2)}');
      print('Deposited: \$${amount.toStringAsFixed(2)}');
    } else {
      throw Exception('Deposit amount must be greater than zero');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      _transactionHistory.add('Withdrawn: \$${amount.toStringAsFixed(2)}');
      print('Withdrawn: \$${amount.toStringAsFixed(2)}');
    } else {
      throw Exception('Invalid withdrawal amount or insufficient balance');
    }
  }

  // Method to transfer money to another account
  void transfer(BankAccount toAccount, double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      toAccount.deposit(amount);
      _transactionHistory.add(
          'Transferred: \$${amount.toStringAsFixed(2)} to ${toAccount.accountNumber}');
      print(
          'Transferred: \$${amount.toStringAsFixed(2)} to ${toAccount.accountNumber}');
    } else {
      throw Exception('Invalid transfer amount or insufficient balance');
    }
  }
}
