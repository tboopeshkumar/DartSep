//% Dart Asynchronous Programming
//% 1. Isolate  -> truly parallel processing
//% 2. Future   -> Deferred (to be done later)
//% 3. Streams  -> Asynchronous pipes
//% 4. async/await  -> Works on top of Future
void main() {
  //! Future <==> Promise of JS
  //! delayed <==> setTimeout(func, delay)

  Future.delayed(
    //~ DEFERRED 
    Duration(seconds: 0), //! delay
    () => print("I did it"), //! func
  );
  print("Porgram ends");

}