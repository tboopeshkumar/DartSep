void main() {
  var list = [11, 23, 36]; //% 3 elements

  //! forEach requires a function, which it calls;
  list.forEach(printSqr);

  //! we can pass function body (anonymous) itself in the argument
  list.forEach((int element) {
    print(element*element);
  }); 

  //! When tere is a single statement, make it arrow function
  list.forEach((element) => print(element * element));

  //~ list modification functions
  //~ add, addAll, insert, remove, removeAt, removeLast

  list.add(37);
  print(list);
  list.addAll([455, 58, 62]);
  print(list);
  list.insert(1, 2);
  print(list);
  list.removeLast();
  print(list);
  list.removeAt(1);
  print(list);
  list.remove(11);
  print(list);

  //~ rearrange
  list.sort();
  print(list);
  print(list.reversed);
  list.sort((first, second) => second - first); //descending order

  //~ search
  print(list.first);
  print(list.where((element) => element > 23));
  
  print(list.take(3));
  print(list.skip(3).take(3));

  print(list.takeWhile((value) => value < 60));
  print(list.skipWhile((value) => value < 50).takeWhile((value) => value < 100));



}

void printSqr(int num) => print(num*num);