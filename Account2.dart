import 'dart:convert';

class Account {
  //! F I E L D S
  
  late final int accountNumber; //? publicly available as read-only "property"
  late String holdersName; //* publicly available as read-write "property"
  late double _balance; //! Private to the package
  
  //~ S T A T I C
  static int _nextAccountNumber = 100; //~ class level var (only 1 shared copy amongst ALL objects )
  static int get nextAccountNumber => _nextAccountNumber;

  //% C O N S T R U C T O R - Default 
  Account(this.holdersName, [this._balance=0]) : accountNumber = _nextAccountNumber++;

  //% C O N S T R I C T O R - named
  Account.fromJSON(String str) {
    var fieldMap = jsonDecode(str);
    accountNumber = _nextAccountNumber++;    
    this.holdersName = fieldMap["holdersName"];
    this._balance = fieldMap["balance"];
  }

  //? M E T H O D S
  double deposit(double amount) => _balance += amount;
  double withdraw(double amount) => _balance -= amount;
  void display() => print("$accountNumber: [$holdersName] $_balance");

  //* GETTTERS & SETTERS
  double get balance => _balance; //! Getter for private variable
}

void main() {
  var a = Account("Lars Bak", 10000);
  a.deposit(100);
  a.withdraw(200);
  a.holdersName = "Lars The Great";
  a.display();
  var b = Account.fromJSON('{"holdersName": "Kasper", "balance": 10000.0}');
  b.display(); 

}
