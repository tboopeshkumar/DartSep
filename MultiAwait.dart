
//% async function is a "state machine"
//% It keeps returns then it comes across 'await'
//% and then keeps jumping in back to the next statement

import 'dart:io';
void main() async {

  //~ switch(visit)
  
  //~ case 1:
  var script = File(Platform.script.toFilePath());
  var token = await script.readAsString(); //! Go, process the event loop
  

  //~ case 2: 
  //! Jump back here when Future is completed
  print(token);
  var bytes = await script.readAsBytes();
  

  //~ case 3:
  print(bytes);
  var content = await GetCurrentFileContent();
  

  //~ case 4:
  print(content);
  var content2 = await GetCurrentFileContentAsync();

  //~ case 5:
  
  print(content2);
}

Future<String> GetCurrentFileContent() async {
  try {
    var script = File(Platform.script.toFilePath());
    var result = await script.readAsString();
    return Future.value(result);
  }
  catch(error) {
    return Future.error(error);
  }
}

Future<String> GetCurrentFileContentAsync() {
  return Future((){
    var script = File(Platform.script.toFilePath());
    var result = script.readAsString()
      .then((value) => Future.value(value))
      .catchError((error){
        Future.error(error);
      });
    return result; 
  });
}