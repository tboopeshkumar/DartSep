class MyClass {
  int _value;
  MyClass(this._value);
  int get value => _value;
  operator>(MyClass rhs) => this._value > rhs.value;
  operator<(MyClass rhs) => this._value < rhs.value;
}

void main() {
  var a = MyClass(10);
  var b = MyClass(20);
  print(a > b);
  print(a < b);
}