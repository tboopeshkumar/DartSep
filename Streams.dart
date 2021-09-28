//! Dart have two types of async

//% Single value return - Future (Promise)
//% Multiple values return - Stream (RxJS -ReactiveX)

import 'dart:convert';
import 'dart:io';

void main() async {
  var file = File(Platform.script.toFilePath());

  //! Future 
  //% .then() will happen only ONCE !!!
  file.readAsString().then((content) => print(content));
  print(await file.readAsString());

  //! Stream
  var stream = file.openRead();
  //% .listen() will be called MULTIPLE times
  //% .listen() is similar to Future.then() but fires multiple times
  stream.listen((list) {
    stdout.write(utf8.decode(list));
  });

  //% await for is await Future but runs multiple times on for
  await for(var stream in file.openRead().transform(Utf8Decoder())) {
    print(stream);
  }

}