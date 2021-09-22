mixin DynamicField {
  final Map<String,dynamic> _fieldMap = {};
  operator []=(String key, dynamic val) => _fieldMap[key] = val;
  operator [](String key) => _fieldMap[key];

  @override
  String toString(){
    return _fieldMap.toString();
  }
}

class Person with DynamicField {
  
}

class Employee with DynamicField {

}

void main() {
  var p = Person();
  p["id"] = 1;
  p["name"] = "Lars Bak";
  print(p);

  var e = Employee();
  e["empid"] = 5;
  print(e["empid"]);
}