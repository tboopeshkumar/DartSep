import 'dart:io';

//% Future works best for non-blocking IO

void main() {

  var script = File(Platform.script.path);

  //! SYNCHRONOUS CODE

  var contents = script.readAsLinesSync(); //! Should be avoided - sync operation
  for(var line in contents) {
    print(line);
  }
  
  //* ASYNCHRONOUS 

  var token = script.readAsString(); //! Will be deferred

  token.then((value) => print(contents));

  print("Program ends");

}