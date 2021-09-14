String getName() {
  return "xyz";
}

void main() {
  var x = 5; //! more like let of JS
  print(x);

  //! constant - const
  const pi = 3.14; //! Value MUST be known at compile time
  print(pi);

  final name = getName();
  print(name);

  // Final - one time assignment
  final time = DateTime.now();
  print(time);

  //? dynamic
  dynamic mystery = 1;
  print("mystery $mystery ${mystery.runtimeType}");

  mystery = 3.14;
  print("mystery $mystery ${mystery.runtimeType}");

  mystery = "abc";
  print("mystery $mystery ${mystery.runtimeType}");

  mystery = [1, 2, 3];
  print("mystery $mystery ${mystery.runtimeType}");
}
