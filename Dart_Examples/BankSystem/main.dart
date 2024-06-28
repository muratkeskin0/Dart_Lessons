import 'Person/Admin.dart';
import 'Person/User.dart';
import 'dart:io';

void main() {
  login();
}

void login() {
  var user1 = User.createAccount(
      1, 'John Doe', 'johndoe', 'password123', '123-456-7890', 'ACC123');
  var user2 = User.createAccount(
      2, 'Jane Doe', 'janedoe', 'password456', '098-765-4321', 'ACC456');
  var admin = Admin.createAccount(
      3, 'Admin User', 'adminuser', 'adminpassword', 'Super Admin');

  while (true) {
    print('Login Menu:');
    print('1. Admin Login');
    print('2. User Login');
    print('Enter your choice (1 or 2):');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      // Log in process for Admin
      print('Admin Login');
      print('Enter username: ');
      String? adminInputUsername = stdin.readLineSync();
      print('Enter password: ');
      String? adminInputPassword = stdin.readLineSync();

      if (admin.login(adminInputUsername!, adminInputPassword!)) {
        print('Admin logged in successfully!');
        admin.displayAdminInfo();
        adminMenu(admin);
      } else {
        print('Invalid username or password for Admin');
      }
    } else if (choice == '2') {
      // Log in process for User
      print('User Login');
      print('Enter username: ');
      String? userInputUsername = stdin.readLineSync();
      print('Enter password: ');
      String? userInputPassword = stdin.readLineSync();

      if (user1.login(userInputUsername!, userInputPassword!)) {
        print('User logged in successfully!');
        user1.displayUserInfo();
        userMenu(user1, [user2]);
      } else if (user2.login(userInputUsername!, userInputPassword!)) {
        print('User logged in successfully!');
        user2.displayUserInfo();
        userMenu(user2, [user1]);
      } else {
        print('Invalid username or password for User');
      }
    } else {
      print('Invalid choice, please try again.');
    }
  }
}

void adminMenu(Admin admin) {
  while (true) {
    print('Admin Menu:');
    print('1. Display Admin Info');
    print('2. Change Password');
    print('3. Delete Account');
    print('4. Log Out');
    print('Enter your choice:');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      admin.displayAdminInfo();
    } else if (choice == '2') {
      print('Enter old password: ');
      String? oldPassword = stdin.readLineSync();
      print('Enter new password: ');
      String? newPassword = stdin.readLineSync();
      try {
        admin.changePassword(oldPassword!, newPassword!);
        print('Password changed successfully.');
      } catch (e) {
        print(e);
      }
    } else if (choice == '3') {
      admin.deleteAccount();
      break;
    } else if (choice == '4') {
      print('Logging out...');
      break;
    } else {
      print('Invalid choice, please try again.');
    }
  }
}

void userMenu(User user, List<User> otherUsers) {
  while (true) {
    print('User Menu:');
    print('1. Display User Info');
    print('2. Display Transaction History');
    print('3. Display Account Balance');
    print('4. Deposit Money');
    print('5. Withdraw Money');
    print('6. Transfer Money');
    print('7. Change Password');
    print('8. Delete Account');
    print('9. Log Out');
    print('Enter your choice:');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      user.displayUserInfo();
    } else if (choice == '2') {
      user.displayTransactionHistory();
    } else if (choice == '3') {
      user.displayBalance();
    } else if (choice == '4') {
      print('Enter amount to deposit: ');
      double? amount = double.parse(stdin.readLineSync()!);
      try {
        user.depositMoney(amount);
        print('Money deposited successfully.');
      } catch (e) {
        print(e);
      }
    } else if (choice == '5') {
      print('Enter amount to withdraw: ');
      double? amount = double.parse(stdin.readLineSync()!);
      try {
        user.withdrawMoney(amount);
        print('Money withdrawn successfully.');
      } catch (e) {
        print(e);
      }
    } else if (choice == '6') {
      print('Enter amount to transfer: ');
      double? amount = double.parse(stdin.readLineSync()!);
      print('Select user to transfer to:');
      for (int i = 0; i < otherUsers.length; i++) {
        print('${i + 1}. ${otherUsers[i].name}');
      }
      String? userChoice = stdin.readLineSync();
      int selectedUserIndex = int.parse(userChoice!) - 1;
      User selectedUser = otherUsers[selectedUserIndex];
      try {
        user.transferMoney(selectedUser, amount);
        print('Money transferred successfully.');
      } catch (e) {
        print(e);
      }
    } else if (choice == '7') {
      print('Enter old password: ');
      String? oldPassword = stdin.readLineSync();
      print('Enter new password: ');
      String? newPassword = stdin.readLineSync();
      try {
        user.changePassword(oldPassword!, newPassword!);
        print('Password changed successfully.');
      } catch (e) {
        print(e);
      }
    } else if (choice == '8') {
      user.deleteAccount();
      break;
    } else if (choice == '9') {
      print('Logging out...');
      return; // Goes back to login page
    } else {
      print('Invalid choice, please try again.');
    }
  }
}
