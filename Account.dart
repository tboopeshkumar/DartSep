class Account {
  //! F I E L D S
  int _accountNumber; //! Private to the package
  String _holdersName;
  double _balance;

  //% C O N S T R U C T O R
  Account(this._accountNumber, this._holdersName, this._balance);

  //? M E T H O D S
  double deposit(double amount) => _balance += amount;
  double withdraw(double amount) => _balance -= amount;
  void display() => print("$_accountNumber $_holdersName $_balance");

  //* GETTTERS & SETTERS
  get accountNumber => _accountNumber;
  get holdersName => _holdersName;
  set holdersName(value) => _holdersName = value;
  get balance => _balance;
}

void main() {
  var a = Account(1, "Lars Bak", 10000);
  a.deposit(100);
  a.withdraw(200);
  print(a.balance);
  a.holdersName = "Lars the great";
  a.display();
}
