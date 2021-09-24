class MyType<T> {
  //~ SINGLE template class for ALL type
  T value;

  MyType(this.value);
  void printValue() {
    print(value);
  }
}

void main() {
  var obj = MyType<int>(4);
  obj.printValue();

  var obj2 = MyType<String>("Lars");
  obj2.printValue();

  var obj3 = MyType<dynamic>(true);
  obj3.printValue();

  var obj4 = MyType(4.5);
  obj4.printValue();
  print(obj4.runtimeType);

  List<int> list = [1,2,3]; //% actually a tempalte class
  list.add(4);
  print(list.runtimeType);

  List<dynamic> list2 = [];
  list2.add(1);
  list2.add("Lars");
  print(list2.runtimeType);

  List<Object> list3 = [];
  print(list3.runtimeType);

  var list4 = <double>[1,2,3];
  print(list4.runtimeType);

  List<double> list5 = [1,2,3];
  print(list5.runtimeType);
}