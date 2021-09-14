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

  final time = DateTime.now();
  print(time);
}
