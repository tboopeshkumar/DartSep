import 'dart:convert';


class Transaction {
  final DateTime date = DateTime.now();
  final String description;
  final double amount;
  final String type;

  Transaction(this.description, this.amount, this.type);
}

class Account {
  //! F I E L D S
  
  late final int accountNumber; //? publicly available as read-only "property"
  late String holdersName; //* publicly available as read-write "property"
  late double _balance; //! Private to the package
  var transactions = [];

  //~ S T A T I C
  static int _nextAccountNumber = 100; //~ class level var (only 1 shared copy amongst ALL objects )
  static int get nextAccountNumber => _nextAccountNumber;

  //% C O N S T R U C T O R - Default 
  Account(this.holdersName, [this._balance=0]) : accountNumber = _nextAccountNumber++;
  
  //? M E T H O D S
  double deposit(String description, double amount) {
    var txn = Transaction(description, amount, "CR");
    transactions.add(txn);
    return _balance += amount;
  }
  double withdraw(String description, double amount) {
    var txn = Transaction(description, amount, "DR");
    transactions.add(txn);
    return _balance -= amount;
  } 
  void display() => print("$accountNumber: [$holdersName] $_balance");

  void printTransactions() {
    print("transactions of type ${transactions.runtimeType}");
    
    for(var txn in transactions) {
      
      print("${txn.date}: ${txn.description} ${txn.amount} ${txn.type}");
    }
  }

  //* GETTTERS & SETTERS
  double get balance => _balance; //! Getter for private variable
}

void main() {
  var a = Account("Lars Bak", 10000);
  a.deposit("savings", 100);
  a.withdraw("expenses", 200);
  a.holdersName = "Lars The Great";
  a.display(); 
  a.printTransactions();

}
