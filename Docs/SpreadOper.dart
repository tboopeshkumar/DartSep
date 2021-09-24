//! There is no RESET Parameters in Dart

void fn(List<dynamic> rest) {
  print(rest);
}

void main() {
  var list = [1,2,3];
  print(list);

  var list2 = [...list, 4, 5, 6];
  print(list2);

  fn([1,2,3]);
  
  print(add(list));
}

int add(List<int> rest) {
  return rest.reduce((value, element) => value+element);
}