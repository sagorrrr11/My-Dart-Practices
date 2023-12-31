abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. New balance: $balance');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print('Withdrawn $amount. New balance: $balance');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print('Withdrawn $amount. New balance: $balance');
    } else {
      print('Insufficient funds. Maximum withdrawal limit exceeded.');
    }
  }
}

void main() {
  // Creating an instance of SavingsAccount
  var savingsAccount = SavingsAccount(574455, 1000, 0.05);
  savingsAccount.deposit(7000);
  savingsAccount.withdraw(1000);

  // Creating an instance of CurrentAccount
  var currentAccount = CurrentAccount(675890, 2000, 1000);
  currentAccount.deposit(1000);
  currentAccount.withdraw(2000);
}
