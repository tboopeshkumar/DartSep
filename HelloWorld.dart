//% DART is a modern language.
//% Its very stable, unlike JavaScript
//% It's static type checking and compiled
//% Dart is class based object oriented (unlike JS - prototype based)
//% In Dart EVERYTHING is a class / object
//! There is NO native data type

//! STRICT
int add(int a, int b) {
  return a + b;
}

//! DYNAMIC
d_add(a, b) {
  return a + b;
}

void main() {
  print("Hello, World");
  print(add(10, 20));
  print(d_add(5, 7));
  print(d_add("xyz", "abc"));
}
