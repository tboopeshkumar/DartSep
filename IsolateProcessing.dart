import 'dart:io';
import 'dart:isolate';

//! This code will be put in a differnt isolate(its own heap)
//% This code will be run PARALLEL (at exactly the same time)

void backgroundTask(SendPort talkie) {
  print("Isolate running");
  var sum = 0;
  for(var i=0; i< 10; i++) {
    sleep(Duration(seconds: 1));
    print("Isolate $i");
    sum += i;
  }
  talkie.send(sum);
  print("Isolat ends");
}

void main() { 
  //% P A R A L L E L   Processing
  ReceivePort walkie = ReceivePort();
  Isolate.spawn(backgroundTask, walkie.sendPort);
  
  walkie.listen((message) { 
    print(message);
    walkie.close();
  });

  for(var i=0;i<12;i++) {
    sleep(Duration(seconds: 1));
    print("main $i");
  }

}