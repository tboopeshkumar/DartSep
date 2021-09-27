import 'dart:io';

void callFuture() {
  print("You future has been called");

  //! Passing a function for future to execute 
  Future(() { //~ Future is ALWAYS created in "Suspended" mode
    for(var i=0;i<10;i++) {
      sleep(Duration(seconds: 1));
      print("Future $i");
    }
  });
}
  
  void main() {
    //%   D E F E R R E D   PROCESSING
    callFuture();
    for(var i=0;i<10;i++) {
      sleep(Duration(seconds: 1));
      print("main $i");      
    }
    print("Program ends");
  }
