//% Class contains
//% 1. Fields
//% 2. Methods
//% 3. Operators
//% 4. static

//! There is NO public, protected or private keywords in Dart

class Person {
  //% Fields (instance member variables)
  int id = 0;
  String name = "";

  //! constructor : method name is class name
  // Person(int id, String n) {
  //   this.id = id;
  //   name = n;
  // }

  //! constructor : with members initialization
  // Person(int id, String name): this.id = id, this.name = name;

  //! constructor : parameter assigned to fields automatically
  // Person(this.id, this.name); // Typescript can do this.

  //! constructor : can have optional / named params
  Person(this.id, {this.name = ""});

  //! construtor : named
  Person.fromString(String str) {
    print("Got $str");
  }

  Person.fromJSON(String str) {
    print("Got $str");
  }

  Person.fromXML(String str) {
    print("Got $str");
  }

  //? Methods (instance member functions)
  void printPerson() {
    print("$id $name");
  }
}

void main() {
  Person p = new Person(1, name: "Lars");
  var p1 = Person(2, name: "Kumar");
  p.printPerson();
  p1.printPerson();
  var p2 = Person.fromString("id=2 name='Kasper'");
  var p3 = Person.fromJSON("{'id':1,'name': 'Lars'}");
  var p4 = Person.fromXML("<person><id>1</id><name>Lars</name></person>");
}
