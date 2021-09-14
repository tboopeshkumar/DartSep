class MyClass {
  void message(String str) {
    print("Hello $str");
  }
}

void main() {
  // new is optional
  var my = /* new */ MyClass();
  my.message("Lars Bak");
}
