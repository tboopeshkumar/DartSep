//! Typical govt. office
Future<int> fetchData() {
  return Future.delayed(Duration(seconds: 5),
  () => Future.value(100) //% can be () => 100 OR throw "Error" OR Future.error("error")
  );
}

void main() {
  //! fetchData will return a token (deferred)
  print("Calling Govt. Office");
  var deferred = fetchData();

  //! We will get a phone call (.then()) when it's done
  print("He promises to call us back with result");
  deferred
    .then((value) => print("Future returns $value"))
    .catchError((error) => print("Govt. officer said NO! ther eis an $error"));

  //! We will continue with our life, not holding the phone for 2 hours
  print("I am ocntinuing, doing something else");
  var list = [1,2,3];
  print(list.map((element)=> element * element));
  print("Program ends");
}