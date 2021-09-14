//% Functions are C++/Java/C# style

add(int a, b) {
  return a.toString() + b.toString();
}

//! Positional parameters
int add_num(int a, int b) {
  return a + b;
}

//! default args or optional params
//! must be enclosed in []
int optionalParamsTest(int a, [int b = 0]) {
  return a + b;
}

//! named params
//! must be enclosed in {}
int namedFn(int a, int b, {op = "add", sep = " "}) {
  print("op $op, sep $sep");
  return a + b;
}

//! named (required) params
//! must be enclosed in {}
int namedFnRequired(int a, int b, {required String op, sep = " "}) {
  print("op $op, sep $sep");
  return a + b;
}

//! CANNOT have optional position and named.
// void mixed(int i, [int b=0], {Stiring op="add"}) {

// }

void main() {
  print(add(5, 7));
  print(optionalParamsTest(5, 7));
  print(optionalParamsTest(5));
  namedFn(5, 10, op: "sub", sep: "\t");
  namedFn(5, 10, op: "sub");
  namedFn(5, 10);
  namedFn(5, 10, sep: "\t", op: "mul");
  namedFnRequired(5, 10, op: "add");
}
