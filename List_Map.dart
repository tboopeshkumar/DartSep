class Person {

  static int _lastId = 1;
  final id = _lastId++;
  String _name;

  Person(this._name);

  @override
  String toString() => '{"id": $id, "name": $_name}';
}

void main() {
  var list = [11,23,36];
  print(list);

  var sqrMap = list.map((element) => element * element).toList();
  print(sqrMap);
  for(var value in sqrMap) print(value);

  var geniuses = ["Dennis Richie", "Alan Kay", "Lars Bak", "Andres Hejisberg"];
  var result = geniuses.map((element)=> Person(element)).toList();
  print(result);

  print(list.map((element) => { element: element * element}));

}