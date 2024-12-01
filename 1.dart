void main() {
  BankAccount client = BankAccount('12A3', 2000);
  client.withdraw();
  double balance = client.deposit(300);
  print('balance is $balance');

  print(
      "clinet's accountId is ${client.accountId} ant it's balance is ${client.balance}");
}

class BankAccount {
  String? accountId;
  double balance;

  BankAccount(this.accountId, [this.balance = 0]) {}

  void withdraw([double amount = 0]) {
    if (balance >= amount) {
      print('done');
      balance -= amount;
    } else {
      print('Insufficient balance');
    }
  }

  double deposit([double amount = 0]) {
    balance += amount;
    return (balance);
  }
}
