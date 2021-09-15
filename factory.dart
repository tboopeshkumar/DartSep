class Singleton {
  static Singleton? obj;

  Singleton.internal() {}

  //% 6. factory constructor
  factory Singleton() {
    if (obj == null) obj = Singleton.internal();
    return obj!;
  }
}

void main() {
  var s1 = Singleton();
  var s2 = Singleton();
  print(s1 == s2);
}
